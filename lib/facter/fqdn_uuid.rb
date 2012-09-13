Facter.add("fqdn_uuid") do
  setcode do
    if File.exist? "/usr/bin/uuid"
      fqdn = Facter.value('fqdn')
      Facter::Util::Resolution.exec("/usr/bin/uuid -v 5 ns:DNS #{fqdn}")
    else
      nil
    end
  end
end
