.class public abstract Lcom/adobe/xmp/impl/Utils;
.super Ljava/lang/Object;


# static fields
.field private static xmlNameChars:[Z

.field private static xmlNameStartChars:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/adobe/xmp/impl/Utils;->initCharTables()V

    return-void
.end method

.method static checkUUIDFormat(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    move v2, v0

    move v4, v2

    move v3, v1

    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_30

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_2d

    add-int/lit8 v4, v4, 0x1

    if-eqz v3, :cond_2c

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2a

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x12

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x17

    if-ne v2, v3, :cond_2c

    :cond_2a
    move v3, v1

    goto :goto_2d

    :cond_2c
    move v3, v0

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_30
    if-eqz v3, :cond_3a

    const/4 p0, 0x4

    if-ne p0, v4, :cond_3a

    const/16 p0, 0x24

    if-ne p0, v2, :cond_3a

    return v1

    :cond_3a
    return v0
.end method

.method public static escapeXML(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_8a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x26

    const/16 v8, 0x3e

    const/16 v9, 0x3c

    if-eq v2, v9, :cond_30

    if-eq v2, v8, :cond_30

    if-eq v2, v7, :cond_30

    if-eqz p2, :cond_28

    if-eq v2, v6, :cond_30

    if-eq v2, v5, :cond_30

    if-eq v2, v4, :cond_30

    :cond_28
    if-eqz p1, :cond_2d

    if-ne v2, v3, :cond_2d

    goto :goto_30

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_30
    :goto_30
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_3d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_86

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz p2, :cond_66

    if-eq v2, v6, :cond_50

    if-eq v2, v5, :cond_50

    if-eq v2, v4, :cond_50

    goto :goto_66

    :cond_50
    const-string v10, "&#x"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x3b

    :goto_62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_83

    :cond_66
    :goto_66
    if-eq v2, v3, :cond_7b

    if-eq v2, v7, :cond_78

    if-eq v2, v9, :cond_75

    if-eq v2, v8, :cond_6f

    goto :goto_62

    :cond_6f
    const-string v2, "&gt;"

    :goto_71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_83

    :cond_75
    const-string v2, "&lt;"

    goto :goto_71

    :cond_78
    const-string v2, "&amp;"

    goto :goto_71

    :cond_7b
    if-eqz p1, :cond_80

    const-string v2, "&quot;"

    goto :goto_71

    :cond_80
    const-string v2, "\""

    goto :goto_71

    :goto_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_86
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8a
    return-object p0
.end method

.method private static initCharTables()V
    .registers 6

    const/16 v0, 0x100

    new-array v1, v0, [Z

    sput-object v1, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    new-array v0, v0, [Z

    sput-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    sget-object v2, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_68

    sget-object v3, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    const/16 v4, 0x3a

    const/4 v5, 0x1

    if-eq v1, v4, :cond_47

    const/16 v4, 0x41

    if-gt v4, v1, :cond_20

    const/16 v4, 0x5a

    if-le v1, v4, :cond_47

    :cond_20
    const/16 v4, 0x5f

    if-eq v1, v4, :cond_47

    const/16 v4, 0x61

    if-gt v4, v1, :cond_2c

    const/16 v4, 0x7a

    if-le v1, v4, :cond_47

    :cond_2c
    const/16 v4, 0xc0

    if-gt v4, v1, :cond_34

    const/16 v4, 0xd6

    if-le v1, v4, :cond_47

    :cond_34
    const/16 v4, 0xd8

    if-gt v4, v1, :cond_3c

    const/16 v4, 0xf6

    if-le v1, v4, :cond_47

    :cond_3c
    const/16 v4, 0xf8

    if-gt v4, v1, :cond_45

    const/16 v4, 0xff

    if-gt v1, v4, :cond_45

    goto :goto_47

    :cond_45
    move v4, v0

    goto :goto_48

    :cond_47
    :goto_47
    move v4, v5

    :goto_48
    aput-boolean v4, v3, v1

    if-nez v4, :cond_62

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_62

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_62

    const/16 v3, 0x30

    if-gt v3, v1, :cond_5c

    const/16 v3, 0x39

    if-le v1, v3, :cond_62

    :cond_5c
    const/16 v3, 0xb7

    if-ne v1, v3, :cond_61

    goto :goto_62

    :cond_61
    move v5, v0

    :cond_62
    :goto_62
    aput-boolean v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_c

    :cond_68
    return-void
.end method

.method static isControlChar(C)Z
    .registers 2

    const/16 v0, 0x1f

    if-le p0, v0, :cond_8

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_16

    :cond_8
    const/16 v0, 0x9

    if-eq p0, v0, :cond_16

    const/16 v0, 0xa

    if-eq p0, v0, :cond_16

    const/16 v0, 0xd

    if-eq p0, v0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private static isNameChar(C)Z
    .registers 2

    const/16 v0, 0xff

    if-gt p0, v0, :cond_a

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_23

    :cond_a
    invoke-static {p0}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v0

    if-nez v0, :cond_23

    const/16 v0, 0x300

    if-lt p0, v0, :cond_18

    const/16 v0, 0x36f

    if-le p0, v0, :cond_23

    :cond_18
    const/16 v0, 0x203f

    if-lt p0, v0, :cond_21

    const/16 v0, 0x2040

    if-gt p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method private static isNameStartChar(C)Z
    .registers 2

    const/16 v0, 0xff

    if-gt p0, v0, :cond_a

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_60

    :cond_a
    const/16 v0, 0x100

    if-lt p0, v0, :cond_12

    const/16 v0, 0x2ff

    if-le p0, v0, :cond_60

    :cond_12
    const/16 v0, 0x370

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x37d

    if-le p0, v0, :cond_60

    :cond_1a
    const/16 v0, 0x37f

    if-lt p0, v0, :cond_22

    const/16 v0, 0x1fff

    if-le p0, v0, :cond_60

    :cond_22
    const/16 v0, 0x200c

    if-lt p0, v0, :cond_2a

    const/16 v0, 0x200d

    if-le p0, v0, :cond_60

    :cond_2a
    const/16 v0, 0x2070

    if-lt p0, v0, :cond_32

    const/16 v0, 0x218f

    if-le p0, v0, :cond_60

    :cond_32
    const/16 v0, 0x2c00

    if-lt p0, v0, :cond_3a

    const/16 v0, 0x2fef

    if-le p0, v0, :cond_60

    :cond_3a
    const/16 v0, 0x3001

    if-lt p0, v0, :cond_43

    const v0, 0xd7ff

    if-le p0, v0, :cond_60

    :cond_43
    const v0, 0xf900

    if-lt p0, v0, :cond_4d

    const v0, 0xfdcf

    if-le p0, v0, :cond_60

    :cond_4d
    const v0, 0xfdf0

    if-lt p0, v0, :cond_57

    const v0, 0xfffd

    if-le p0, v0, :cond_60

    :cond_57
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_62

    const v0, 0xeffff

    if-gt p0, v0, :cond_62

    :cond_60
    const/4 p0, 0x1

    return p0

    :cond_62
    const/4 p0, 0x0

    return p0
.end method

.method public static isXMLName(Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_12

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    :cond_12
    const/4 v0, 0x1

    move v2, v0

    :goto_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_28

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/adobe/xmp/impl/Utils;->isNameChar(C)Z

    move-result v3

    if-nez v3, :cond_25

    return v1

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_28
    return v0
.end method

.method public static isXMLNameNS(Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3a

    const/4 v2, 0x0

    if-lez v0, :cond_1a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1a

    :cond_19
    return v2

    :cond_1a
    const/4 v0, 0x1

    move v3, v0

    :goto_1c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_37

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/adobe/xmp/impl/Utils;->isNameChar(C)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_33

    goto :goto_36

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_36
    :goto_36
    return v2

    :cond_37
    return v0
.end method

.method public static normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "x-default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_46

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_43

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_3e

    const/16 v5, 0x5f

    if-eq v3, v5, :cond_3e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_35

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    :goto_31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_43

    :cond_35
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    goto :goto_31

    :cond_3e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static removeControlChars(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p0, v1, :cond_1e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_1b
    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    const/4 v4, 0x2

    if-ne v2, v3, :cond_11

    move v1, v4

    :cond_11
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    new-instance v4, Ljava/lang/StringBuffer;

    sub-int v0, v5, v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_29
    if-ge v3, v5, :cond_3f

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v2, :cond_3d

    add-int/lit8 v3, v3, 0x2

    goto :goto_29

    :cond_3d
    move v3, v0

    goto :goto_29

    :cond_3f
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
