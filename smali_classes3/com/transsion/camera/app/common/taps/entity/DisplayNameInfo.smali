.class public Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;
.super Lcom/transsion/camera/app/common/taps/entity/BaseInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;
    }
.end annotation


# static fields
.field private static final POSITIONS:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mFlags:I

.field private final mIsLivePhoto:Z

.field private final mIsLowQuality:Z

.field private final mUserID:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DisplayNameInfo"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 36
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->POSITIONS:[I

    return-void
.end method

.method private constructor <init>(JZZII)V
    .registers 7

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;-><init>(J)V

    .line 49
    iput p5, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mUserID:I

    .line 50
    iput p6, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mFlags:I

    .line 51
    iput-boolean p3, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mIsLowQuality:Z

    .line 52
    iput-boolean p4, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mIsLivePhoto:Z

    return-void
.end method

.method synthetic constructor <init>(JZZIILcom/transsion/camera/app/common/taps/entity/DisplayNameInfo-IA;)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;-><init>(JZZII)V

    return-void
.end method

.method private static addSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 211
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 214
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") AND ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayNameInfo(Landroid/content/ContentValues;Z)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;
    .registers 3

    if-eqz p1, :cond_24

    .line 228
    const-string/jumbo p1, "xmp"

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 229
    array-length p1, p0

    if-nez p1, :cond_f

    goto :goto_1b

    .line 233
    :cond_f
    new-instance p1, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {p1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getDisplayNameInfoFromXmp(Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    move-result-object p0

    return-object p0

    .line 230
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getDisplayNameInfo: xmp is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 235
    :cond_24
    const-string p1, "_display_name"

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 236
    invoke-static {p0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getDisplayNameInfo(Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayNameInfo(Lcom/transsion/camera/app/common/mode/PictureInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;
    .registers 5

    if-eqz p1, :cond_3f

    .line 311
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->isLowQuality()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3f

    .line 314
    :cond_9
    new-instance v0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;-><init>(J)V

    .line 315
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->isLowQuality()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->setLowQualityState(Z)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isLivePhoto()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->setLivePhotoState(Z)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;

    move-result-object v0

    .line 317
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/QualityInfo;->getUserID()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->setUserID(I)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;

    move-result-object p1

    .line 318
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isAIFrame()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->setAIFrame(Z)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;

    move-result-object p1

    .line 319
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isAIZoomSR()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->setAIZoomSR(Z)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;

    move-result-object p0

    .line 320
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->build()Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    move-result-object p0

    return-object p0

    :cond_3f
    :goto_3f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDisplayNameInfo(Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;
    .registers 15

    .line 251
    invoke-static {p0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->isLowQualityDisplayName(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "displayName is error"

    if-eqz v0, :cond_85

    .line 254
    const-string v0, ".jpg"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 259
    sget-object v2, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->POSITIONS:[I

    array-length v2, v2

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const-wide/32 v5, -0x80000000

    move v10, v3

    move v7, v4

    move-wide v8, v5

    :goto_22
    const/4 v11, 0x1

    if-lez v2, :cond_65

    .line 260
    sget-object v12, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->POSITIONS:[I

    add-int/lit8 v13, v2, -0x1

    aget v12, v12, v13

    if-eq v12, v11, :cond_51

    const/4 v13, 0x2

    if-eq v12, v13, :cond_42

    const/4 v13, 0x3

    if-eq v12, v13, :cond_34

    goto :goto_59

    .line 264
    :cond_34
    :try_start_34
    array-length v13, v0

    sub-int/2addr v13, v12

    aget-object v13, v0, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3c} :catch_3d

    goto :goto_59

    :catch_3d
    move-exception v10

    .line 266
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4f

    .line 272
    :cond_42
    :try_start_42
    array-length v13, v0

    sub-int/2addr v13, v12

    aget-object v13, v0, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4a} :catch_4b

    goto :goto_59

    :catch_4b
    move-exception v10

    .line 274
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4f
    move v10, v12

    goto :goto_59

    .line 279
    :cond_51
    invoke-static {v0, v12, v8, v9}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getLongValue([Ljava/lang/String;IJ)J

    move-result-wide v8

    cmp-long v12, v8, v5

    if-eqz v12, :cond_5f

    :goto_59
    if-eq v10, v3, :cond_5c

    goto :goto_65

    :cond_5c
    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    .line 281
    :cond_5f
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 291
    :cond_65
    :goto_65
    new-instance v0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;

    invoke-direct {v0, v8, v9}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;-><init>(J)V

    .line 292
    invoke-virtual {v0, v11}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->setLowQualityState(Z)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;

    move-result-object v0

    const-string v1, "_live"

    .line 293
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->setLivePhotoState(Z)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;

    move-result-object p0

    .line 294
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->setUserID(I)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;

    move-result-object p0

    .line 295
    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->setFlags(I)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;

    move-result-object p0

    .line 296
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo$Builder;->build()Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    move-result-object p0

    return-object p0

    .line 252
    :cond_85
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDisplayNameInfoFromXmp(Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;
    .registers 2

    .line 241
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 242
    sget-object p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getDisplayNameInfoFromXmp: xmp is empty"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 246
    :cond_f
    invoke-static {p0}, Lcom/transsion/camera/app/common/livephoto/xmp/XMPHelper;->parseXMPMeta(Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getHighQualityDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 144
    const-string v0, "_low"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    return-object p0

    .line 147
    :cond_9
    const-string v1, "_live"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, ".jpg"

    if-eqz v2, :cond_37

    .line 148
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 151
    :cond_30
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v3

    return-object p0

    .line 154
    :cond_37
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 157
    :cond_53
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v3

    return-object p0
.end method

.method private static getLongValue([Ljava/lang/String;IJ)J
    .registers 5

    .line 302
    :try_start_0
    array-length v0, p0

    sub-int/2addr v0, p1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-wide p0

    :catch_9
    move-exception p0

    .line 304
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide p2
.end method

.method public static getLowQualityDisplayName(Ljava/lang/String;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)Ljava/lang/String;
    .registers 9

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    iget-boolean v1, p1, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mIsLivePhoto:Z

    if-eqz v1, :cond_e

    .line 116
    const-string v1, "_live"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_e
    const-string v1, "_low"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    sget-object v1, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->POSITIONS:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_4a

    aget v4, v1, v3

    const/4 v5, 0x1

    .line 120
    const-string v6, "_"

    if-eq v4, v5, :cond_3d

    const/4 v5, 0x2

    if-eq v4, v5, :cond_32

    const/4 v5, 0x3

    if-eq v4, v5, :cond_27

    goto :goto_47

    .line 122
    :cond_27
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getFlags()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 125
    :cond_32
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getUserID()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 128
    :cond_3d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 134
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLowQualityLiveMediaSelection(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 199
    const-string v0, "_display_name LIKE \'%_live%\'"

    const-string v1, "is_pending=1"

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->addSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string/jumbo v1, "xmp LIKE \'%TCamera:LowQualityPicture%\'"

    const-string/jumbo v2, "xmp LIKE \'%TCamera:LivePhoto%\'"

    invoke-static {v1, v2}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->addSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->orSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->addSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLowQualityMediaSelection(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 179
    const-string v0, "_display_name LIKE \'%_low%\'"

    const-string v1, "is_pending=1"

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->addSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string/jumbo v1, "xmp LIKE \'%TCamera:LowQualityPicture%\'"

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->orSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->addSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLowQualityMediaSelection(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_a

    .line 189
    const-string/jumbo p1, "xmp LIKE \'%TCamera:LowQualityPicture%\'"

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->addSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 191
    :cond_a
    const-string p1, "_display_name LIKE \'%_low%\'"

    const-string v0, "is_pending=1"

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->addSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->addSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isLowQualityDisplayName(Ljava/lang/String;)Z
    .registers 2

    .line 163
    const-string v0, "_low"

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->isLowQualityInfo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isLowQualityInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 175
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private static orSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 219
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 222
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") OR ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 96
    :cond_4
    instance-of v1, p1, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 99
    :cond_a
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 100
    :cond_11
    check-cast p1, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    .line 101
    iget v1, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mUserID:I

    iget v3, p1, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mUserID:I

    if-ne v1, v3, :cond_2c

    iget v1, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mFlags:I

    iget v3, p1, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mFlags:I

    if-ne v1, v3, :cond_2c

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mIsLowQuality:Z

    iget-boolean v3, p1, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mIsLowQuality:Z

    if-ne v1, v3, :cond_2c

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mIsLivePhoto:Z

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mIsLivePhoto:Z

    if-ne p0, p1, :cond_2c

    return v0

    :cond_2c
    return v2
.end method

.method public getFlags()I
    .registers 1

    .line 60
    iget p0, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mFlags:I

    return p0
.end method

.method public getUserID()I
    .registers 1

    .line 56
    iget p0, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mUserID:I

    return p0
.end method

.method public hashCode()I
    .registers 5

    .line 109
    invoke-super {p0}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mUserID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mIsLowQuality:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mIsLivePhoto:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isAIFrame()Z
    .registers 2

    .line 72
    iget p0, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isAIZoomSR()Z
    .registers 2

    .line 76
    iget p0, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mFlags:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isLivePhoto()Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mIsLivePhoto:Z

    return p0
.end method

.method public isLowQuality()Z
    .registers 1

    .line 64
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mIsLowQuality:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ mTimestampKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUserID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mUserID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFlags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mFlags:I

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLowQuality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mIsLowQuality:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLivePhoto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->mIsLivePhoto:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
