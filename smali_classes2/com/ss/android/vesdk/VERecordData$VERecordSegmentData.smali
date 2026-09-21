.class public final Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VERecordData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VERecordSegmentData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAudio:Ljava/lang/String;

.field public mAudioLength:J

.field private mCutTrimIn:J

.field private mCutTrimOut:J

.field public mEnable:Z

.field public mRotate:Lcom/ss/android/vesdk/ROTATE_DEGREE;

.field public mSpeed:F

.field public mTrimIn:J

.field public mTrimOut:J

.field public mVideo:Ljava/lang/String;

.field public mVideoLength:J

.field public mVideoSpeed:F

.field public mWithNoSpeedBoth:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 536
    new-instance v0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 552
    iput v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoSpeed:F

    const/4 v0, 0x0

    .line 559
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mWithNoSpeedBoth:Z

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideo:Ljava/lang/String;

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mAudio:Ljava/lang/String;

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoLength:J

    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mAudioLength:J

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoSpeed:F

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mSpeed:F

    .line 617
    const-class v1, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    iput-object v1, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mRotate:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mTrimIn:J

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mTrimOut:J

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_51

    move v1, v2

    goto :goto_52

    :cond_51
    move v1, v0

    :goto_52
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mEnable:Z

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimIn:J

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimOut:J

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_67

    move v0, v2

    :cond_67
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mWithNoSpeedBoth:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;JFFLcom/ss/android/vesdk/ROTATE_DEGREE;JJZ)V
    .registers 15

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideo:Ljava/lang/String;

    .line 598
    iput-object p4, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mAudio:Ljava/lang/String;

    .line 599
    iput-wide p2, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoLength:J

    .line 600
    iput-wide p5, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mAudioLength:J

    .line 601
    iput p7, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoSpeed:F

    .line 602
    iput p8, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mSpeed:F

    .line 603
    iput-object p9, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mRotate:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    .line 604
    iput-wide p10, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mTrimIn:J

    iput-wide p10, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimIn:J

    .line 605
    iput-wide p12, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mTrimOut:J

    iput-wide p12, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimOut:J

    .line 606
    iput-boolean p14, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mEnable:Z

    const/4 p1, 0x0

    .line 607
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mWithNoSpeedBoth:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;JFJJZ)V
    .registers 14

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 552
    iput v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoSpeed:F

    .line 573
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideo:Ljava/lang/String;

    .line 574
    iput-object p4, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mAudio:Ljava/lang/String;

    .line 575
    iput-wide p2, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoLength:J

    .line 576
    iput-wide p5, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mAudioLength:J

    .line 577
    iput p7, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mSpeed:F

    .line 578
    iput-wide p8, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mTrimIn:J

    iput-wide p8, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimIn:J

    .line 579
    iput-wide p10, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mTrimOut:J

    iput-wide p10, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimOut:J

    .line 580
    iput-boolean p12, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mEnable:Z

    const/4 p1, 0x0

    .line 581
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mWithNoSpeedBoth:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;)J
    .registers 3

    .line 534
    iget-wide v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimOut:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;J)J
    .registers 3

    .line 534
    iput-wide p1, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimOut:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;)J
    .registers 3

    .line 534
    iget-wide v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimIn:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;J)J
    .registers 3

    .line 534
    iput-wide p1, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimIn:J

    return-wide p1
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getCutTrimIn()J
    .registers 3

    .line 649
    iget-wide v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimIn:J

    return-wide v0
.end method

.method public getCutTrimOut()J
    .registers 3

    .line 653
    iget-wide v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimOut:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 628
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mAudio:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    iget-wide v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 631
    iget-wide v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mAudioLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 632
    iget v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 633
    iget v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 634
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mRotate:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 635
    iget-wide v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mTrimIn:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 636
    iget-wide v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mTrimOut:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 637
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mEnable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 638
    iget-wide v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimIn:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 639
    iget-wide v0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mCutTrimOut:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 640
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mWithNoSpeedBoth:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
