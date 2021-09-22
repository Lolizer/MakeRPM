cp prog-1.0.tar.gz SOURCES/

cat > SPECS/prog.spec << EOF
%define        __spec_install_post %{nil}
%define          debug_package %{nil}
%define        __os_install_post %{_dbpath}/brp-compress

Summary: RAIDIX test exercise
Name: prog
Version: 1.0
Release: 1
License: GPL+
Group: Junior
SOURCE: %{name}-%{version}.tar.gz

BuildRoot: %{_tmppath}/%{name}-%{version}-root

%description
%{summary}

%prep
%setup

%build

%install
rm -rf %{buildroot}
mkdir -p %{buildroot}

cp -a * %{buildroot}

%clean
rm -rf %{buildroot}

%files
%defattr(755,root,root,-)
%{_DEST}/*

%post
if [[ %{_DEST} != 'usr/bin' ]]; then ln -s %{_DEST}/task /usr/bin/task; fi

%preun
rm /usr/bin/task


%changelog
* Wed Sep 22 2021 Mulaev Namin 1.0-1
- First Build
EOF
