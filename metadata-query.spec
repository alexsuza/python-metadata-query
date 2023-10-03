%define debug_package %{nil}
%define pyname metadataquery


Name:           python38-metadata-query

Version:        1.0.2
Release:        1%{?dist}
Summary:        queries database
License:        SNL
URL:            https://gitlab.%{getenv:INSTALLPATH}/cloude/%{name}
Source0:        https://gitlab.%{getenv:INSTALLPATH}/cloude/%{name}/code.tar.gz

BuildRequires:  python38 python38-devel python38-setuptools python38-rpm-macros python38-pip
BuildRequires:  cloude-python

Requires: cloude-python

%description
displays query of database


%prep
%setup -q -n code

%build
python3.8 setup.py build 

%install
mkdir -p %{buildroot}%{_unitdir}
mkdir -p %{buildroot}%{python3_sitearch}/%{pyname}/templates/
python3.8 setup.py install --skip-build --prefix=%{_prefix} --root %{buildroot} --install-lib=%{python3_sitearch}

install -m 0644 metadata-query.service %{buildroot}%{_unitdir}/metadata-query.service
install -m 0644 templates/index.html %{buildroot}%{python3_sitearch}/%{pyname}/templates/index.html

%files
%license LICENSE*
%doc README*
%attr(0755, root, root) %{python3_sitearch}/%{pyname}/*
%{python3_sitearch}/%{pyname}-%{version}-py3.*.egg-info
%{_unitdir}/metadata-query.service
%{_bindir}/metadataquery
%changelog
* Thu Sep 21 2023 Alex Desouza <aodesou@sandia.gov> - 1.0.1-1
- Initial build
