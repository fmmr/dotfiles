function set_java_home_from_pom {
      if [ ! -f pom.xml ]; then
        echo "No pom.xml in current directory"
        return 1
      fi
      local ver
      ver=$(grep -m1 '<java.version>' pom.xml | sed 's/[^0-9]//g')
      if [ -z "$ver" ]; then
        ver=$(grep -m1 '<version.jdk>' pom.xml | sed 's/[^0-9]//g')
        if [ -z "$ver" ]; then
          echo "Warning: No <java.version> or '<version.jdk> found in pom.xml, defaulting to Java 17"
          ver=17
        fi
      fi
      echo "Using Java $ver"
      export JAVA_HOME=$(/usr/libexec/java_home -v "$ver")
  }

function mci {
      set_java_home_from_pom || return 1
      mvn clean install "$@"
  }

function c {
      set_java_home_from_pom
      claude "$@"
  }
