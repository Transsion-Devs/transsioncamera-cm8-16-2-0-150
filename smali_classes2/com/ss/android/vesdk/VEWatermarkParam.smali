.class public Lcom/ss/android/vesdk/VEWatermarkParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;,
        Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VEWatermarkParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public duration:J

.field private entities:[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

.field public extFile:Ljava/lang/String;

.field public height:I

.field public images:[Ljava/lang/String;

.field public interval:I

.field public mask:Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;

.field public needExtFile:Z

.field public position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

.field public rotation:I

.field public secondHalfImages:[Ljava/lang/String;

.field public waterMarkBitmap:Landroid/graphics/Bitmap;

.field public width:I

.field public xOffset:I

.field public yOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 439
    new-instance v0, Lcom/ss/android/vesdk/VEWatermarkParam$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEWatermarkParam$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEWatermarkParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 126
    iput-wide v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->duration:J

    .line 133
    sget-object v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TL_BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->rotation:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 126
    iput-wide v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->duration:J

    .line 133
    sget-object v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TL_BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->rotation:I

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    :cond_15
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->needExtFile:Z

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->extFile:Ljava/lang/String;

    .line 423
    sget-object v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->entities:[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    .line 424
    const-class v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->mask:Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->images:[Ljava/lang/String;

    .line 426
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->waterMarkBitmap:Landroid/graphics/Bitmap;

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->secondHalfImages:[Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->interval:I

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->xOffset:I

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->yOffset:I

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->width:I

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->height:I

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->duration:J

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7c

    const/4 v0, 0x0

    goto :goto_82

    .line 435
    :cond_7c
    invoke-static {}, Lcom/ss/android/vesdk/VEWaterMarkPosition;->values()[Lcom/ss/android/vesdk/VEWaterMarkPosition;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_82
    iput-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->rotation:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getEntities()[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;
    .registers 15

    .line 156
    iget-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->entities:[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->images:[Ljava/lang/String;

    if-eqz v0, :cond_73

    .line 159
    iget-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->secondHalfImages:[Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 162
    :goto_11
    new-array v3, v0, [Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->entities:[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v4, v0, :cond_53

    .line 165
    new-instance v5, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    invoke-direct {v5}, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;-><init>()V

    .line 166
    iget-object v6, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->images:[Ljava/lang/String;

    iput-object v6, v5, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->images:[Ljava/lang/String;

    .line 167
    iget v6, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->interval:I

    iput v6, v5, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->interval:I

    .line 168
    iget v6, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->width:I

    iput v6, v5, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->width:I

    .line 169
    iget v6, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->height:I

    iput v6, v5, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->height:I

    .line 170
    iget-object v6, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    iput-object v6, v5, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    .line 171
    iget-wide v6, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->duration:J

    int-to-long v8, v4

    mul-long/2addr v8, v6

    int-to-long v10, v0

    div-long/2addr v8, v10

    iput-wide v8, v5, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->sequenceIn:J

    add-int/lit8 v8, v4, 0x1

    int-to-long v12, v8

    mul-long/2addr v6, v12

    .line 172
    div-long/2addr v6, v10

    iput-wide v6, v5, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->sequenceOut:J

    .line 173
    iget v6, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->rotation:I

    iput v6, v5, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->rotation:I

    .line 174
    iget v6, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->xOffset:I

    iput v6, v5, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->xOffset:I

    .line 175
    iget v6, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->yOffset:I

    iput v6, v5, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->yOffset:I

    .line 176
    iget-object v6, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->entities:[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    aput-object v5, v6, v4

    move v4, v8

    goto :goto_17

    :cond_53
    if-ne v0, v1, :cond_5d

    .line 179
    iget-object v4, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->entities:[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->secondHalfImages:[Ljava/lang/String;

    iput-object v5, v4, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->images:[Ljava/lang/String;

    .line 181
    :cond_5d
    iget-object v4, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    sget-object v5, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TL_BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    if-ne v4, v5, :cond_73

    if-ne v0, v1, :cond_73

    .line 182
    iget-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->entities:[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    aget-object v1, v0, v3

    sget-object v3, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TL:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    iput-object v3, v1, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    .line 183
    aget-object v0, v0, v2

    sget-object v1, Lcom/ss/android/vesdk/VEWaterMarkPosition;->BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    iput-object v1, v0, Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    .line 186
    :cond_73
    iget-object p0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->entities:[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    return-object p0
.end method

.method public setEntities([Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->entities:[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " needExtFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->needExtFile:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 403
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->needExtFile:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 404
    iget-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->extFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->entities:[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 406
    iget-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->mask:Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 407
    iget-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->images:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->waterMarkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 409
    iget-object p2, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->secondHalfImages:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 410
    iget p2, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->interval:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget p2, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->xOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget p2, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->yOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget p2, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget p2, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 416
    iget-object p2, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    if-nez p2, :cond_47

    const/4 p2, -0x1

    goto :goto_4b

    :cond_47
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_4b
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget p0, p0, Lcom/ss/android/vesdk/VEWatermarkParam;->rotation:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
