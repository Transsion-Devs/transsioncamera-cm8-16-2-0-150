.class public abstract Lcom/obs/services/model/select/XmlSerialization;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract appendToXml(Lcom/obs/services/internal/xml/OBSXMLBuilder;)V
.end method

.method protected charToString(Ljava/lang/Character;)Ljava/lang/String;
    .registers 3

    .line 41
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_b

    .line 42
    const-string p0, "\\n"

    return-object p0

    .line 44
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_16

    .line 45
    const-string p0, "\\r"

    return-object p0

    .line 47
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_21

    .line 48
    const-string p0, "\\t"

    return-object p0

    .line 50
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_2c

    .line 51
    const-string p0, "\\f"

    return-object p0

    .line 53
    :cond_2c
    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
