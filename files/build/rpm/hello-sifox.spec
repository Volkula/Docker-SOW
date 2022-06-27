Summary: A simple program that prints hello sifox
Name: hello-world
Version: 1.0.0
Release: 1
URL: https://dev.volkula.com
Group: System
License: example # https://fedoraproject.org/wiki/Licensing:Main?rd=Licensing#Software_License_List
Packager: Volkula
Requires: bash
BuildRoot: /opt/repo/files/build/rpm

%description
An example package containing a hello-world binary for sifox

%install
mkdir -p %{buildroot}/usr/bin/
cp /opt/repo/files/build/c/tz %{buildroot}/usr/bin/tz

%files
/usr/bin/tz

%changelog
* Sun Jun 26 2022 volkula <volkula@gmail.com>
- initial example
"
