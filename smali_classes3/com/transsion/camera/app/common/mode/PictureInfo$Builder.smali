.class public Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/PictureInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mData:[B

.field private mFormat:I

.field private mHeight:I

.field private mIsAIFrame:Z

.field private mIsAIZoomSR:Z

.field private mIsBGImage:Z

.field private mIsLivePhoto:Z

.field private mListener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

.field private mOrientation:I

.field private mPicCountRemaining:I

.field private mTimestamp:J

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;-><init>(Lcom/transsion/camera/app/common/mode/PictureInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/mode/PictureInfo;)V
    .registers 4

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_64

    .line 104
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setData([B)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p0

    .line 105
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getFormat()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setFormat(I)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p0

    .line 106
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setWidth(I)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p0

    .line 107
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setHeight(I)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p0

    .line 108
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setOrientation(I)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p0

    .line 109
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getPicCountRemaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setPicCountRemaining(I)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setTimestamp(J)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p0

    .line 111
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isBGImage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setIsBGImage(Z)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p0

    .line 112
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isLivePhoto()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setIsLivePhoto(Z)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p0

    .line 113
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getListener()Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setListener(Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p0

    .line 114
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isAIFrame()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setIsAIFrame(Z)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p0

    .line 115
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isAIZoomSR()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setIsAIZoomSR(Z)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    :cond_64
    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/app/common/mode/PictureInfo;
    .registers 16

    .line 180
    new-instance v0, Lcom/transsion/camera/app/common/mode/PictureInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mData:[B

    iget v2, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mFormat:I

    iget v3, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mWidth:I

    iget v4, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mHeight:I

    iget v5, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mOrientation:I

    iget v6, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mPicCountRemaining:I

    iget-wide v7, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mTimestamp:J

    iget-boolean v9, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mIsBGImage:Z

    iget-boolean v10, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mIsLivePhoto:Z

    iget-boolean v11, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mIsAIFrame:Z

    iget-boolean v12, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mIsAIZoomSR:Z

    iget-object v13, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mListener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/transsion/camera/app/common/mode/PictureInfo;-><init>([BIIIIIJZZZZLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;Lcom/transsion/camera/app/common/mode/PictureInfo-IA;)V

    return-object v0
.end method

.method public setData([B)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mData:[B

    return-object p0
.end method

.method public setFormat(I)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;
    .registers 2

    .line 125
    iput p1, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mFormat:I

    return-object p0
.end method

.method public setHeight(I)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;
    .registers 2

    .line 135
    iput p1, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mHeight:I

    return-object p0
.end method

.method public setIsAIFrame(Z)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;
    .registers 2

    .line 165
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mIsAIFrame:Z

    return-object p0
.end method

.method public setIsAIZoomSR(Z)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;
    .registers 2

    .line 170
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mIsAIZoomSR:Z

    return-object p0
.end method

.method public setIsBGImage(Z)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;
    .registers 2

    .line 155
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mIsBGImage:Z

    return-object p0
.end method

.method public setIsLivePhoto(Z)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;
    .registers 2

    .line 160
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mIsLivePhoto:Z

    return-object p0
.end method

.method public setListener(Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mListener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    return-object p0
.end method

.method public setOrientation(I)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;
    .registers 2

    .line 140
    iput p1, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mOrientation:I

    return-object p0
.end method

.method public setPicCountRemaining(I)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;
    .registers 2

    .line 145
    iput p1, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mPicCountRemaining:I

    return-object p0
.end method

.method public setTimestamp(J)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;
    .registers 3

    .line 150
    iput-wide p1, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mTimestamp:J

    return-object p0
.end method

.method public setWidth(I)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;
    .registers 2

    .line 130
    iput p1, p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->mWidth:I

    return-object p0
.end method
