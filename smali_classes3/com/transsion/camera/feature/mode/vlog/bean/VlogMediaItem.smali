.class public Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description:Ljava/lang/String;

.field private duration:J

.field private hlResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;"
        }
    .end annotation
.end field

.field private landscapeSource:Ljava/lang/String;

.field private material_id:Ljava/lang/String;

.field private orientation:I

.field private originDuration:J

.field private originSource:Ljava/lang/String;

.field private portraitSource:Ljava/lang/String;

.field private sourceStartTime:J

.field private style:I

.field private targetEndTime:J

.field private targetStartTime:J

.field private video_height:I

.field private video_width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 334
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->orientation:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->hlResults:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->orientation:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->hlResults:Ljava/util/List;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->material_id:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->description:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->video_height:I

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->video_width:I

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->duration:J

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->targetStartTime:J

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->targetEndTime:J

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->portraitSource:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->landscapeSource:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originSource:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->sourceStartTime:J

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->orientation:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originDuration:J

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->style:I

    .line 331
    sget-object v0, Lcom/volcengine/ck/highlight/data/HLResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->hlResults:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/List;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;IJ)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->orientation:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->hlResults:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originSource:Ljava/lang/String;

    .line 63
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->video_width:I

    .line 64
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->video_height:I

    .line 65
    iput p5, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->orientation:I

    .line 66
    iput-wide p6, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originDuration:J

    .line 67
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->hlResults:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 69
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->style:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJJJ)V
    .registers 12

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->orientation:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->hlResults:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->material_id:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->description:Ljava/lang/String;

    .line 53
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->video_width:I

    .line 54
    iput p4, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->video_height:I

    .line 55
    iput-wide p5, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->duration:J

    .line 56
    iput-wide p7, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->targetStartTime:J

    .line 57
    iput-wide p9, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->targetEndTime:J

    const/4 p1, 0x2

    .line 58
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->style:I

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;"
        }
    .end annotation

    .line 185
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;
    .registers 2

    .line 247
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 25
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->clone()Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public fill(Ljava/lang/String;JLjava/util/List;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;IJ)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originSource:Ljava/lang/String;

    .line 83
    iput-wide p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->sourceStartTime:J

    .line 84
    iput p5, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->orientation:I

    .line 85
    iput-wide p6, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originDuration:J

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->hlResults:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->hlResults:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 88
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->style:I

    return-void
.end method

.method public fill(Ljava/lang/String;Ljava/lang/String;JIJ)V
    .registers 8

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->portraitSource:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->landscapeSource:Ljava/lang/String;

    .line 76
    iput-wide p3, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->sourceStartTime:J

    .line 77
    iput p5, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->orientation:I

    .line 78
    iput-wide p6, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originDuration:J

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()J
    .registers 3

    .line 213
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->duration:J

    return-wide v0
.end method

.method public getHlResults()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->hlResults:Ljava/util/List;

    return-object p0
.end method

.method public getLandscapeSource()Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->landscapeSource:Ljava/lang/String;

    return-object p0
.end method

.method public getMaterial_id()Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->material_id:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()I
    .registers 1

    .line 205
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->orientation:I

    return p0
.end method

.method public getOriginDuration()J
    .registers 3

    .line 129
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originDuration:J

    return-wide v0
.end method

.method public getOriginSource()Ljava/lang/String;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originSource:Ljava/lang/String;

    return-object p0
.end method

.method public getPortraitSource()Ljava/lang/String;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->portraitSource:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceStartTime()J
    .registers 3

    .line 221
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->sourceStartTime:J

    return-wide v0
.end method

.method public getStyle()I
    .registers 1

    .line 177
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->style:I

    return p0
.end method

.method public getTargetEndTime()J
    .registers 3

    .line 237
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->targetEndTime:J

    return-wide v0
.end method

.method public getTargetStartTime()J
    .registers 3

    .line 229
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->targetStartTime:J

    return-wide v0
.end method

.method public getVideo_height()I
    .registers 1

    .line 189
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->video_height:I

    return p0
.end method

.method public getVideo_width()I
    .registers 1

    .line 197
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->video_width:I

    return p0
.end method

.method public isValid()Z
    .registers 7

    .line 101
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->style:I

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_23

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->portraitSource:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->landscapeSource:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->orientation:I

    if-ltz v0, :cond_22

    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originDuration:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_22

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->sourceStartTime:J

    cmp-long p0, v2, v0

    if-gez p0, :cond_22

    return v5

    :cond_22
    return v4

    :cond_23
    if-ne v0, v5, :cond_3a

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originSource:Ljava/lang/String;

    if-eqz v0, :cond_3a

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->orientation:I

    if-ltz v0, :cond_3a

    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originDuration:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3a

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->sourceStartTime:J

    cmp-long p0, v2, v0

    if-gez p0, :cond_3a

    return v5

    :cond_3a
    return v4
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->material_id:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->description:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->video_height:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->video_width:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->duration:J

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->targetStartTime:J

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->targetEndTime:J

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->portraitSource:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->landscapeSource:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originSource:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->sourceStartTime:J

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->orientation:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originDuration:J

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->style:I

    .line 313
    sget-object v0, Lcom/volcengine/ck/highlight/data/HLResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->hlResults:Ljava/util/List;

    return-void
.end method

.method public reset()V
    .registers 4

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originSource:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->portraitSource:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->landscapeSource:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->sourceStartTime:J

    const/4 v2, -0x1

    .line 96
    iput v2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->orientation:I

    .line 97
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originDuration:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->description:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .registers 3

    .line 217
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->duration:J

    return-void
.end method

.method public setHlResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;)V"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->hlResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->hlResults:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setLandscapeSource(Ljava/lang/String;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->landscapeSource:Ljava/lang/String;

    return-void
.end method

.method public setMaterial_id(Ljava/lang/String;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->material_id:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 209
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->orientation:I

    return-void
.end method

.method public setOriginDuration(J)V
    .registers 3

    .line 133
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originDuration:J

    return-void
.end method

.method public setOriginSource(Ljava/lang/String;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originSource:Ljava/lang/String;

    return-void
.end method

.method public setPortraitSource(Ljava/lang/String;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->portraitSource:Ljava/lang/String;

    return-void
.end method

.method public setSourceStartTime(J)V
    .registers 3

    .line 225
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->sourceStartTime:J

    return-void
.end method

.method public setStyle(I)V
    .registers 2

    .line 181
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->style:I

    return-void
.end method

.method public setTargetEndTime(J)V
    .registers 3

    .line 241
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->targetEndTime:J

    return-void
.end method

.method public setTargetStartTime(J)V
    .registers 3

    .line 233
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->targetStartTime:J

    return-void
.end method

.method public setVideo_height(I)V
    .registers 2

    .line 193
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->video_height:I

    return-void
.end method

.method public setVideo_width(I)V
    .registers 2

    .line 201
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->video_width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VlogMediaItem{material_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->material_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", video_height="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->video_height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", video_width="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->video_width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", targetStartTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->targetStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", targetEndTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->targetEndTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", portraitSource=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->portraitSource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", landscapeSource=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->landscapeSource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", originSource=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originSource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", sourceStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->sourceStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", originDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->style:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hlResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->hlResults:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 281
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->material_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->video_height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->video_width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 286
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->targetStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 287
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->targetEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 288
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->portraitSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->landscapeSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->sourceStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 292
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->orientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->originDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 294
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->style:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->hlResults:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
