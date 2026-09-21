.class public abstract Lcom/fasterxml/jackson/core/json/PackageVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VERSION:Lcom/fasterxml/jackson/core/Version;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 13
    const-string v0, "com.fasterxml.jackson.core"

    const-string v1, "jackson-core"

    const-string v2, "2.13.3"

    invoke-static {v2, v0, v1}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    return-void
.end method
