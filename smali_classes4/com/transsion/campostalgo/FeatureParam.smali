.class public Lcom/transsion/campostalgo/FeatureParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/campostalgo/FeatureParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mKeyToPosMap:Ljava/util/HashMap;

.field private mOutBegin:I

.field private mParcelInData:Landroid/os/Parcel;

.field private mParcelOutData:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lcom/transsion/campostalgo/FeatureParam$1;

    invoke-direct {v0}, Lcom/transsion/campostalgo/FeatureParam$1;-><init>()V

    sput-object v0, Lcom/transsion/campostalgo/FeatureParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/campostalgo/FeatureParam;->mKeyToPosMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/transsion/campostalgo/FeatureParam;->mOutBegin:I

    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Lcom/transsion/campostalgo/FeatureParam;->mOutBegin:I

    .line 124
    invoke-direct {p0}, Lcom/transsion/campostalgo/FeatureParam;->appendHeader()V

    return-void
.end method

.method private static addOrThrow(II)I
    .registers 5

    if-nez p1, :cond_3

    return p0

    :cond_3
    if-lez p1, :cond_d

    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    if-gt p0, v0, :cond_d

    add-int/2addr p0, p1

    return p0

    :cond_d
    if-gez p1, :cond_16

    const/high16 v0, -0x80000000

    sub-int/2addr v0, p1

    if-lt p0, v0, :cond_16

    add-int/2addr p0, p1

    return p0

    .line 441
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Addition overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " + "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private appendHeader()V
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-object p0, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    const v0, 0x4d455441    # 2.06914576E8f

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method private parse(Landroid/os/Parcel;)Z
    .registers 10

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    const-string v1, "FeatureParam"

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ge v0, v3, :cond_24

    .line 380
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not enough data "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 383
    :cond_24
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    if-lt v6, v5, :cond_6d

    if-ge v5, v3, :cond_3b

    goto :goto_6d

    .line 395
    :cond_3b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const v7, 0x4d455441    # 2.06914576E8f

    if-eq v6, v7, :cond_60

    .line 397
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Marker missing "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    return v2

    :cond_60
    sub-int/2addr v5, v3

    .line 403
    invoke-direct {p0, p1, v0, v5}, Lcom/transsion/campostalgo/FeatureParam;->scanAllRecords(Landroid/os/Parcel;II)Z

    move-result p0

    if-nez p0, :cond_6b

    .line 404
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    return v2

    :cond_6b
    const/4 p0, 0x1

    return p0

    .line 389
    :cond_6d
    :goto_6d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad size "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " avail "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " position "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    return v2
.end method

.method private scanAllRecords(Landroid/os/Parcel;II)Z
    .registers 13

    .line 300
    iget-object v0, p0, Lcom/transsion/campostalgo/FeatureParam;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    const/16 v2, 0xc

    .line 301
    const-string v3, "FeatureParam"

    const/4 v4, 0x1

    if-le p3, v2, :cond_67

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-gt v6, v2, :cond_1f

    .line 306
    const-string p1, "Record is too short"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    move p1, v4

    goto :goto_68

    .line 312
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 316
    iget-object v7, p0, Lcom/transsion/campostalgo/FeatureParam;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 317
    const-string p1, "Duplicate metadata ID found"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 322
    :cond_31
    iget-object v7, p0, Lcom/transsion/campostalgo/FeatureParam;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 329
    :try_start_42
    invoke-static {v5, v6}, Lcom/transsion/campostalgo/FeatureParam;->addOrThrow(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_49} :catch_4d

    sub-int/2addr p3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catch_4d
    move-exception p1

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_67
    move p1, v0

    :goto_68
    if-nez p3, :cond_6e

    if-eqz p1, :cond_6d

    goto :goto_6e

    :cond_6d
    return v4

    .line 342
    :cond_6e
    :goto_6e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ran out of data or error on record "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object p0, p0, Lcom/transsion/campostalgo/FeatureParam;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return v0
.end method

.method private updateLength()I
    .registers 5

    .line 264
    iget-object v0, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 265
    iget v1, p0, Lcom/transsion/campostalgo/FeatureParam;->mOutBegin:I

    sub-int v2, v0, v1

    .line 266
    iget-object v3, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 267
    iget-object v1, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object p0, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return v2
.end method


# virtual methods
.method public appendInt(Ljava/lang/String;I)V
    .registers 6

    .line 134
    iget-object v0, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v1, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object p1, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object p1, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .line 144
    iget-object p2, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 145
    iget-object p2, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    sub-int v0, p1, v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object p0, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public appendIntArray(Ljava/lang/String;[I)V
    .registers 6

    .line 179
    iget-object v0, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v1, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object p1, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 191
    iget-object p1, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .line 194
    iget-object p2, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 195
    iget-object p2, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    sub-int v0, p1, v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object p0, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelInData:Landroid/os/Parcel;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    .line 251
    invoke-direct {p0, p1}, Lcom/transsion/campostalgo/FeatureParam;->parse(Landroid/os/Parcel;)Z

    .line 252
    iget-object p0, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelInData:Landroid/os/Parcel;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 233
    invoke-direct {p0}, Lcom/transsion/campostalgo/FeatureParam;->updateLength()I

    move-result p2

    .line 234
    iget-object p0, p0, Lcom/transsion/campostalgo/FeatureParam;->mParcelOutData:Landroid/os/Parcel;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    return-void
.end method
