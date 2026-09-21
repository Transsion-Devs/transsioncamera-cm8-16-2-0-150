.class public Lcom/transsion/camera/app/common/mode/PictureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;
    }
.end annotation


# instance fields
.field private final mData:[B

.field private final mFormat:I

.field private final mHeight:I

.field private final mIsAIFrame:Z

.field private final mIsAIZoomSR:Z

.field private final mIsBGImage:Z

.field private final mIsLivePhoto:Z

.field private final mListener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

.field private final mOrientation:I

.field private final mPicCountRemaining:I

.field private final mTimestamp:J

.field private final mWidth:I


# direct methods
.method private constructor <init>([BIIIIIJZZZZLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V
    .registers 14

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mData:[B

    .line 23
    iput p2, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mFormat:I

    .line 24
    iput p3, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mWidth:I

    .line 25
    iput p4, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mHeight:I

    .line 26
    iput p5, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mOrientation:I

    .line 27
    iput p6, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mPicCountRemaining:I

    .line 28
    iput-wide p7, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mTimestamp:J

    .line 29
    iput-boolean p9, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mIsBGImage:Z

    .line 30
    iput-boolean p10, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mIsLivePhoto:Z

    .line 31
    iput-boolean p11, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mIsAIFrame:Z

    .line 32
    iput-boolean p12, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mIsAIZoomSR:Z

    .line 33
    iput-object p13, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mListener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    return-void
.end method

.method synthetic constructor <init>([BIIIIIJZZZZLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;Lcom/transsion/camera/app/common/mode/PictureInfo-IA;)V
    .registers 15

    .line 0
    invoke-direct/range {p0 .. p13}, Lcom/transsion/camera/app/common/mode/PictureInfo;-><init>([BIIIIIJZZZZLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mData:[B

    return-object p0
.end method

.method public getFormat()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mFormat:I

    return p0
.end method

.method public getHeight()I
    .registers 1

    .line 49
    iget p0, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mHeight:I

    return p0
.end method

.method public getListener()Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mListener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    return-object p0
.end method

.method public getOrientation()I
    .registers 1

    .line 53
    iget p0, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mOrientation:I

    return p0
.end method

.method public getPicCountRemaining()I
    .registers 1

    .line 57
    iget p0, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mPicCountRemaining:I

    return p0
.end method

.method public getTimestamp()J
    .registers 3

    .line 61
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mTimestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .registers 1

    .line 45
    iget p0, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mWidth:I

    return p0
.end method

.method public isAIFrame()Z
    .registers 1

    .line 73
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mIsAIFrame:Z

    return p0
.end method

.method public isAIZoomSR()Z
    .registers 1

    .line 77
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mIsAIZoomSR:Z

    return p0
.end method

.method public isBGImage()Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mIsBGImage:Z

    return p0
.end method

.method public isLivePhoto()Z
    .registers 1

    .line 69
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/PictureInfo;->mIsLivePhoto:Z

    return p0
.end method
