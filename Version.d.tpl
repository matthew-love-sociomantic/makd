/*******************************************************************************

    Version information generated at compile time.

    This file is automatically generated.
    DO NOT CHANGE, IT WILL BE OVERWRITTEN
    DO NOT ADD TO THE REPOSITORY

    Copyright:
        Template source Copyright (c) 2014-2016 Sociomantic Labs GmbH.
	Generated code based on this template is owned by the user who ran the
	generation.

    License:
        Template source is distributed under Boost Software License Version 1.0.
	Generated code based on this template is determined by the user who ran
	the generation.

*******************************************************************************/

module @MODULE@;

// Use weird symbols name to minimize risk of clashing with identical aliases
// from generic D2 transition helper module. Module itself is not imported
// here to minimize external makd dependencies.
version (D_Version2)
{
    mixin("alias immutable(char)[] _tpl_istring;");
}
else
{
    alias char[] _tpl_istring;
}

_tpl_istring[_tpl_istring] version_info;

deprecated("@MODULE@.versionInfo is deprecated. Please rename it to version_info")
alias version_info versionInfo;

deprecated("Please use @MODULE@.version_info instead (part of the D2 transition)")
alias version_info Version;

static this()
{
    version_info["version"] = "@VERSION@";
    version_info["build_date"] = "@DATE@";
    version_info["build_author"] = "@AUTHOR@";
    version_info["compiler"] = "@COMPILER@";
    version_info["dflags"] = "@DFLAGS@";
    version_info["flavour"] = "@FLAVOUR@";
@LIBRARIES@
    buildPredefinedVersions();
}


/*******************************************************************************

    Store predefined versions that are defined while compiling in the global
    variable Versions.

*******************************************************************************/

private void buildPredefinedVersions()
{
    mixin(Id!("DigitalMars"));
    mixin(Id!("GNU"));
    mixin(Id!("LDC"));
    mixin(Id!("SDC"));
    mixin(Id!("D_NET"));
    mixin(Id!("Windows"));
    mixin(Id!("Win32"));
    mixin(Id!("Win64"));
    mixin(Id!("linux"));
    mixin(Id!("OSX"));
    mixin(Id!("FreeBSD"));
    mixin(Id!("OpenBSD"));
    mixin(Id!("BSD"));
    mixin(Id!("Solaris"));
    mixin(Id!("Posix"));
    mixin(Id!("AIX"));
    mixin(Id!("SkyOS"));
    mixin(Id!("SysV3"));
    mixin(Id!("SysV4"));
    mixin(Id!("Hurd"));
    mixin(Id!("Cygwin"));
    mixin(Id!("MinGW"));
    mixin(Id!("X86"));
    mixin(Id!("X86_64"));
    mixin(Id!("ARM"));
    mixin(Id!("PPC"));
    mixin(Id!("PPC64"));
    mixin(Id!("IA64"));
    mixin(Id!("MIPS"));
    mixin(Id!("MIPS64"));
    mixin(Id!("SPARC"));
    mixin(Id!("SPARC64"));
    mixin(Id!("S390"));
    mixin(Id!("S390X"));
    mixin(Id!("HPPA"));
    mixin(Id!("HPPA64"));
    mixin(Id!("SH"));
    mixin(Id!("SH64"));
    mixin(Id!("Alpha"));
    mixin(Id!("LittleEndian"));
    mixin(Id!("BigEndian"));
    mixin(Id!("D_Coverage"));
    mixin(Id!("D_Ddoc"));
    mixin(Id!("D_InlineAsm_X86"));
    mixin(Id!("D_InlineAsm_X86_64"));
    mixin(Id!("D_LP64"));
    mixin(Id!("D_PIC"));
}


/*******************************************************************************

    Adds the `name` to the `Version` global (key "ver_name", value "name") iff
    version (name) is defined.

*******************************************************************************/

private template Id (_tpl_istring name)
{
    version (D_Version2)
    {
        mixin("static immutable Id = `version (` ~ name ~ `) version_info[\"ver_`
             ~ name ~ `\"] = \"` ~ name ~ `\";`;");
    }
    else
    {
        const _tpl_istring Id = `version (` ~ name ~ `) version_info["ver_` ~ name ~
            `"] = "` ~ name ~ `";`;
    }
}
