.class public Lcom/transsion/camera/utils/exif/ExifTag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TYPE_TO_SIZE_MAP:[I

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mComponentCountActual:I

.field private final mDataType:S

.field private mHasDefinedDefaultComponentCount:Z

.field private mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 71
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    const/16 v0, 0xb

    .line 72
    new-array v0, v0, [I

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x1

    .line 79
    aput v1, v0, v1

    const/4 v2, 0x2

    .line 80
    aput v1, v0, v2

    const/4 v3, 0x3

    .line 81
    aput v2, v0, v3

    const/4 v2, 0x4

    .line 82
    aput v2, v0, v2

    const/4 v3, 0x5

    const/16 v4, 0x8

    .line 83
    aput v4, v0, v3

    const/4 v3, 0x7

    .line 84
    aput v1, v0, v3

    const/16 v1, 0x9

    .line 85
    aput v2, v0, v1

    const/16 v1, 0xa

    .line 86
    aput v4, v0, v1

    .line 106
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(SSIIZ)V
    .registers 6

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-short p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mTagId:S

    .line 145
    iput-short p2, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    .line 146
    iput p3, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    .line 147
    iput-boolean p5, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 148
    iput p4, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mIfd:I

    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-void
.end method

.method private checkBadComponentCount(I)Z
    .registers 3

    .line 951
    iget-boolean v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_a

    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    if-eq p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private checkOverflowForRational([Lcom/transsion/camera/utils/exif/Rational;)Z
    .registers 9

    .line 1019
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_33

    aget-object v2, p1, v1

    .line 1020
    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/Rational;->getNumerator()J

    move-result-wide v3

    const-wide/32 v5, -0x80000000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_31

    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/Rational;->getDenominator()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_31

    .line 1021
    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/Rational;->getNumerator()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gtz v3, :cond_31

    .line 1022
    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/Rational;->getDenominator()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_2e

    goto :goto_31

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_31
    :goto_31
    const/4 p0, 0x1

    return p0

    :cond_33
    return v0
.end method

.method private checkOverflowForUnsignedLong([I)Z
    .registers 5

    .line 999
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_e

    aget v2, p1, v1

    if-gez v2, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    return v0
.end method

.method private checkOverflowForUnsignedLong([J)Z
    .registers 8

    .line 990
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_1c

    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1a

    const-wide v4, 0xffffffffL

    cmp-long v2, v2, v4

    if-lez v2, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    return v0
.end method

.method private checkOverflowForUnsignedRational([Lcom/transsion/camera/utils/exif/Rational;)Z
    .registers 9

    .line 1008
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_34

    aget-object v2, p1, v1

    .line 1009
    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/Rational;->getNumerator()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_32

    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/Rational;->getDenominator()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_32

    .line 1010
    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/Rational;->getNumerator()J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    cmp-long v3, v3, v5

    if-gtz v3, :cond_32

    .line 1011
    invoke-virtual {v2}, Lcom/transsion/camera/utils/exif/Rational;->getDenominator()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_2f

    goto :goto_32

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_32
    :goto_32
    const/4 p0, 0x1

    return p0

    :cond_34
    return v0
.end method

.method private checkOverflowForUnsignedShort([I)Z
    .registers 6

    .line 981
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_14

    aget v2, p1, v1

    const v3, 0xffff

    if-gt v2, v3, :cond_12

    if-gez v2, :cond_f

    goto :goto_12

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    :goto_12
    const/4 p0, 0x1

    return p0

    :cond_14
    return v0
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_1e

    .line 976
    :pswitch_3
    const-string p0, ""

    return-object p0

    .line 974
    :pswitch_6
    const-string p0, "RATIONAL"

    return-object p0

    .line 972
    :pswitch_9
    const-string p0, "LONG"

    return-object p0

    .line 970
    :pswitch_c
    const-string p0, "UNDEFINED"

    return-object p0

    .line 968
    :pswitch_f
    const-string p0, "UNSIGNED_RATIONAL"

    return-object p0

    .line 966
    :pswitch_12
    const-string p0, "UNSIGNED_LONG"

    return-object p0

    .line 964
    :pswitch_15
    const-string p0, "UNSIGNED_SHORT"

    return-object p0

    .line 962
    :pswitch_18
    const-string p0, "ASCII"

    return-object p0

    .line 960
    :pswitch_1b
    const-string p0, "UNSIGNED_BYTE"

    return-object p0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_3
        :pswitch_c
        :pswitch_3
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static getElementSize(S)I
    .registers 2

    .line 167
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aget p0, v0, p0

    return p0
.end method

.method public static isValidIfd(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_11

    if-eq p0, v0, :cond_11

    const/4 v1, 0x2

    if-eq p0, v1, :cond_11

    const/4 v1, 0x3

    if-eq p0, v1, :cond_11

    const/4 v1, 0x4

    if-ne p0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    return v0
.end method

.method public static isValidType(S)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1d

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1d

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1d

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1d

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1d

    const/16 v1, 0xa

    if-ne p0, v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1034
    :cond_4
    instance-of v1, p1, Lcom/transsion/camera/utils/exif/ExifTag;

    if-eqz v1, :cond_67

    .line 1035
    check-cast p1, Lcom/transsion/camera/utils/exif/ExifTag;

    .line 1036
    iget-short v1, p1, Lcom/transsion/camera/utils/exif/ExifTag;->mTagId:S

    iget-short v2, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mTagId:S

    if-ne v1, v2, :cond_67

    iget v1, p1, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    iget v2, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    if-ne v1, v2, :cond_67

    iget-short v1, p1, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    iget-short v2, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    if-eq v1, v2, :cond_1d

    goto :goto_67

    .line 1041
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz p0, :cond_61

    .line 1042
    iget-object p1, p1, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez p1, :cond_26

    return v0

    .line 1044
    :cond_26
    instance-of v1, p0, [J

    if-eqz v1, :cond_38

    .line 1045
    instance-of v1, p1, [J

    if-nez v1, :cond_2f

    return v0

    .line 1048
    :cond_2f
    check-cast p0, [J

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    .line 1049
    :cond_38
    instance-of v1, p0, [Lcom/transsion/camera/utils/exif/Rational;

    if-eqz v1, :cond_4a

    .line 1050
    instance-of v1, p1, [Lcom/transsion/camera/utils/exif/Rational;

    if-nez v1, :cond_41

    return v0

    .line 1053
    :cond_41
    check-cast p0, [Lcom/transsion/camera/utils/exif/Rational;

    check-cast p1, [Lcom/transsion/camera/utils/exif/Rational;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1054
    :cond_4a
    instance-of v1, p0, [B

    if-eqz v1, :cond_5c

    .line 1055
    instance-of v1, p1, [B

    if-nez v1, :cond_53

    return v0

    .line 1058
    :cond_53
    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    .line 1060
    :cond_5c
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1063
    :cond_61
    iget-object p0, p1, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez p0, :cond_67

    const/4 p0, 0x1

    return p0

    :cond_67
    :goto_67
    return v0
.end method

.method public forceGetValueAsString()Ljava/lang/String;
    .registers 5

    .line 811
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    .line 813
    :cond_7
    instance-of v2, v0, [B

    if-eqz v2, :cond_21

    .line 814
    iget-short p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1a

    .line 815
    new-instance p0, Ljava/lang/String;

    check-cast v0, [B

    sget-object v1, Lcom/transsion/camera/utils/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    .line 817
    :cond_1a
    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 819
    :cond_21
    instance-of p0, v0, [J

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_3d

    .line 820
    move-object p0, v0

    check-cast p0, [J

    array-length p0, p0

    if-ne p0, v3, :cond_36

    .line 821
    check-cast v0, [J

    aget-wide v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 823
    :cond_36
    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 825
    :cond_3d
    instance-of p0, v0, [Ljava/lang/Object;

    if-eqz p0, :cond_5a

    .line 826
    move-object p0, v0

    check-cast p0, [Ljava/lang/Object;

    array-length p0, p0

    if-ne p0, v3, :cond_53

    .line 827
    check-cast v0, [Ljava/lang/Object;

    aget-object p0, v0, v2

    if-nez p0, :cond_4e

    return-object v1

    .line 831
    :cond_4e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 834
    :cond_53
    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 837
    :cond_5a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected forceSetComponentCount(I)V
    .registers 2

    .line 238
    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    return-void
.end method

.method protected getBytes([B)V
    .registers 4

    const/4 v0, 0x0

    .line 905
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->getBytes([BII)V

    return-void
.end method

.method protected getBytes([BII)V
    .registers 6

    .line 919
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_26

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    goto :goto_26

    .line 920
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot get BYTE value from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    .line 921
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 923
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 924
    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    if-le p3, p0, :cond_2d

    move p3, p0

    :cond_2d
    const/4 p0, 0x0

    .line 923
    invoke-static {v0, p0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getComponentCount()I
    .registers 1

    .line 230
    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    return p0
.end method

.method public getDataSize()I
    .registers 2

    .line 220
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->getDataType()S

    move-result p0

    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->getElementSize(S)I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method public getDataType()S
    .registers 1

    .line 211
    iget-short p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    return p0
.end method

.method public getIfd()I
    .registers 1

    .line 181
    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mIfd:I

    return p0
.end method

.method protected getOffset()I
    .registers 1

    .line 932
    iget p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mOffset:I

    return p0
.end method

.method protected getRational(I)Lcom/transsion/camera/utils/exif/Rational;
    .registers 4

    .line 894
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_27

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    goto :goto_27

    .line 895
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get RATIONAL value from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    .line 896
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 898
    :cond_27
    :goto_27
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast p0, [Lcom/transsion/camera/utils/exif/Rational;

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected getStringByte()[B
    .registers 1

    .line 882
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast p0, [B

    return-object p0
.end method

.method public getTagId()S
    .registers 1

    .line 194
    iget-short p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mTagId:S

    return p0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 1

    .line 778
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getValueAsBytes()[B
    .registers 2

    .line 634
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, p0, [B

    if-eqz v0, :cond_9

    .line 635
    check-cast p0, [B

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValueAsInt(I)I
    .registers 4

    .line 734
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->getValueAsInts()[I

    move-result-object p0

    if-eqz p0, :cond_f

    .line 735
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    goto :goto_f

    :cond_b
    const/4 p1, 0x0

    .line 738
    aget p0, p0, p1

    return p0

    :cond_f
    :goto_f
    return p1
.end method

.method public getValueAsInts()[I
    .registers 5

    .line 711
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 713
    :cond_6
    instance-of v1, p0, [J

    if-eqz v1, :cond_1b

    .line 714
    check-cast p0, [J

    .line 715
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 716
    :goto_10
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    .line 717
    aget-wide v2, p0, v1

    long-to-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1b
    return-object v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .registers 3

    .line 600
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 602
    :cond_6
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 603
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 604
    :cond_d
    instance-of v1, p0, [B

    if-eqz v1, :cond_1a

    .line 605
    new-instance v0, Ljava/lang/String;

    check-cast p0, [B

    sget-object v1, Lcom/transsion/camera/utils/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_1a
    return-object v0
.end method

.method protected getValueAt(I)J
    .registers 4

    .line 854
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v0, [J

    if-eqz v1, :cond_b

    .line 855
    check-cast v0, [J

    aget-wide p0, v0, p1

    return-wide p0

    .line 856
    :cond_b
    instance-of v1, v0, [B

    if-eqz v1, :cond_15

    .line 857
    check-cast v0, [B

    aget-byte p0, v0, p1

    int-to-long p0, p0

    return-wide p0

    .line 859
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get integer value from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    .line 860
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected hasDefinedCount()Z
    .registers 1

    .line 947
    iget-boolean p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return p0
.end method

.method public hasValue()Z
    .registers 1

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method protected setHasDefinedCount(Z)V
    .registers 2

    .line 943
    iput-boolean p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return-void
.end method

.method protected setIfd(I)V
    .registers 2

    .line 185
    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mIfd:I

    return-void
.end method

.method protected setOffset(I)V
    .registers 2

    .line 939
    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mOffset:I

    return-void
.end method

.method public setValue(B)Z
    .registers 4

    const/4 v0, 0x1

    .line 498
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([B)Z

    move-result p0

    return p0
.end method

.method public setValue(I)Z
    .registers 2

    .line 303
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([I)Z

    move-result p0

    return p0
.end method

.method public setValue(J)Z
    .registers 5

    const/4 v0, 0x1

    .line 346
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([J)Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/transsion/camera/utils/exif/Rational;)Z
    .registers 2

    .line 440
    filled-new-array {p1}, [Lcom/transsion/camera/utils/exif/Rational;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([Lcom/transsion/camera/utils/exif/Rational;)Z

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 519
    :cond_4
    instance-of v1, p1, Ljava/lang/Short;

    const v2, 0xffff

    if-eqz v1, :cond_17

    .line 520
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    and-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(I)Z

    move-result p0

    return p0

    .line 521
    :cond_17
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 522
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 523
    :cond_22
    instance-of v1, p1, [I

    if-eqz v1, :cond_2d

    .line 524
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([I)Z

    move-result p0

    return p0

    .line 525
    :cond_2d
    instance-of v1, p1, [J

    if-eqz v1, :cond_38

    .line 526
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([J)Z

    move-result p0

    return p0

    .line 527
    :cond_38
    instance-of v1, p1, Lcom/transsion/camera/utils/exif/Rational;

    if-eqz v1, :cond_43

    .line 528
    check-cast p1, Lcom/transsion/camera/utils/exif/Rational;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(Lcom/transsion/camera/utils/exif/Rational;)Z

    move-result p0

    return p0

    .line 529
    :cond_43
    instance-of v1, p1, [Lcom/transsion/camera/utils/exif/Rational;

    if-eqz v1, :cond_4e

    .line 530
    check-cast p1, [Lcom/transsion/camera/utils/exif/Rational;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([Lcom/transsion/camera/utils/exif/Rational;)Z

    move-result p0

    return p0

    .line 531
    :cond_4e
    instance-of v1, p1, [B

    if-eqz v1, :cond_59

    .line 532
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([B)Z

    move-result p0

    return p0

    .line 533
    :cond_59
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_68

    .line 534
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(I)Z

    move-result p0

    return p0

    .line 535
    :cond_68
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_77

    .line 536
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(J)Z

    move-result p0

    return p0

    .line 537
    :cond_77
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_86

    .line 538
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(B)Z

    move-result p0

    return p0

    .line 539
    :cond_86
    instance-of v1, p1, [Ljava/lang/Short;

    if-eqz v1, :cond_a8

    .line 541
    check-cast p1, [Ljava/lang/Short;

    .line 542
    array-length v1, p1

    new-array v1, v1, [I

    move v3, v0

    .line 543
    :goto_90
    array-length v4, p1

    if-ge v3, v4, :cond_a3

    .line 544
    aget-object v4, p1, v3

    if-nez v4, :cond_99

    move v4, v0

    goto :goto_9e

    :cond_99
    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    and-int/2addr v4, v2

    :goto_9e
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_90

    .line 546
    :cond_a3
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([I)Z

    move-result p0

    return p0

    .line 547
    :cond_a8
    instance-of v1, p1, [Ljava/lang/Integer;

    if-eqz v1, :cond_c9

    .line 549
    check-cast p1, [Ljava/lang/Integer;

    .line 550
    array-length v1, p1

    new-array v1, v1, [I

    move v2, v0

    .line 551
    :goto_b2
    array-length v3, p1

    if-ge v2, v3, :cond_c4

    .line 552
    aget-object v3, p1, v2

    if-nez v3, :cond_bb

    move v3, v0

    goto :goto_bf

    :cond_bb
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_bf
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b2

    .line 554
    :cond_c4
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([I)Z

    move-result p0

    return p0

    .line 555
    :cond_c9
    instance-of v1, p1, [Ljava/lang/Long;

    if-eqz v1, :cond_ea

    .line 557
    check-cast p1, [Ljava/lang/Long;

    .line 558
    array-length v1, p1

    new-array v1, v1, [J

    .line 559
    :goto_d2
    array-length v2, p1

    if-ge v0, v2, :cond_e5

    .line 560
    aget-object v2, p1, v0

    if-nez v2, :cond_dc

    const-wide/16 v2, 0x0

    goto :goto_e0

    :cond_dc
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_e0
    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d2

    .line 562
    :cond_e5
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([J)Z

    move-result p0

    return p0

    .line 563
    :cond_ea
    instance-of v1, p1, [Ljava/lang/Byte;

    if-eqz v1, :cond_10b

    .line 565
    check-cast p1, [Ljava/lang/Byte;

    .line 566
    array-length v1, p1

    new-array v1, v1, [B

    move v2, v0

    .line 567
    :goto_f4
    array-length v3, p1

    if-ge v2, v3, :cond_106

    .line 568
    aget-object v3, p1, v2

    if-nez v3, :cond_fd

    move v3, v0

    goto :goto_101

    :cond_fd
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    :goto_101
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f4

    .line 570
    :cond_106
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([B)Z

    move-result p0

    return p0

    :cond_10b
    return v0
.end method

.method public setValue(Ljava/lang/String;)Z
    .registers 7

    .line 369
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a

    if-eq v0, v1, :cond_a

    return v2

    .line 373
    :cond_a
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 375
    array-length v0, p1

    const/4 v4, 0x1

    if-lez v0, :cond_26

    .line 376
    array-length v0, p1

    sub-int/2addr v0, v4

    aget-byte v0, p1, v0

    if-eqz v0, :cond_32

    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    if-ne v0, v1, :cond_1f

    goto :goto_32

    .line 377
    :cond_1f
    array-length v0, p1

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_32

    .line 378
    :cond_26
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    if-ne v0, v3, :cond_32

    iget v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    if-ne v0, v4, :cond_32

    .line 379
    new-array p1, v4, [B

    aput-byte v2, p1, v2

    .line 381
    :cond_32
    :goto_32
    array-length v0, p1

    .line 382
    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    return v2

    .line 385
    :cond_3a
    iput v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    .line 386
    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    return v4
.end method

.method public setValue([B)Z
    .registers 4

    const/4 v0, 0x0

    .line 481
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue([BII)Z

    move-result p0

    return p0
.end method

.method public setValue([BII)Z
    .registers 8

    .line 462
    invoke-direct {p0, p3}, Lcom/transsion/camera/utils/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 465
    :cond_8
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_11

    const/4 v3, 0x7

    if-eq v0, v3, :cond_11

    return v1

    .line 468
    :cond_11
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 469
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    iput p3, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    return v2
.end method

.method public setValue([I)Z
    .registers 7

    .line 266
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    return v1

    .line 269
    :cond_9
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_16

    const/16 v4, 0x9

    if-eq v0, v4, :cond_16

    if-eq v0, v2, :cond_16

    return v1

    :cond_16
    if-ne v0, v3, :cond_1f

    .line 273
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->checkOverflowForUnsignedShort([I)Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    .line 275
    :cond_1f
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_2a

    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->checkOverflowForUnsignedLong([I)Z

    move-result v0

    if-eqz v0, :cond_2a

    return v1

    .line 279
    :cond_2a
    array-length v0, p1

    new-array v0, v0, [J

    .line 280
    :goto_2d
    array-length v2, p1

    if-ge v1, v2, :cond_38

    .line 281
    aget v2, p1, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 283
    :cond_38
    iput-object v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 284
    array-length p1, p1

    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    const/4 p0, 0x1

    return p0
.end method

.method public setValue([J)Z
    .registers 5

    .line 322
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    if-eq v0, v2, :cond_e

    goto :goto_1c

    .line 325
    :cond_e
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->checkOverflowForUnsignedLong([J)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    .line 328
    :cond_15
    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 329
    array-length p1, p1

    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    const/4 p0, 0x1

    return p0

    :cond_1c
    :goto_1c
    return v1
.end method

.method public setValue([Lcom/transsion/camera/utils/exif/Rational;)Z
    .registers 6

    .line 407
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    return v1

    .line 410
    :cond_9
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    const/16 v2, 0xa

    const/4 v3, 0x5

    if-eq v0, v3, :cond_13

    if-eq v0, v2, :cond_13

    return v1

    :cond_13
    if-ne v0, v3, :cond_1c

    .line 413
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->checkOverflowForUnsignedRational([Lcom/transsion/camera/utils/exif/Rational;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    .line 415
    :cond_1c
    iget-short v0, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_27

    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/exif/ExifTag;->checkOverflowForRational([Lcom/transsion/camera/utils/exif/Rational;)Z

    move-result v0

    if-eqz v0, :cond_27

    return v1

    .line 419
    :cond_27
    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 420
    array-length p1, p1

    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mTagId:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "tag id: %04X\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mIfd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mDataType:S

    .line 1072
    invoke-static {v1}, Lcom/transsion/camera/utils/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mComponentCountActual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\noffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/exif/ExifTag;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
