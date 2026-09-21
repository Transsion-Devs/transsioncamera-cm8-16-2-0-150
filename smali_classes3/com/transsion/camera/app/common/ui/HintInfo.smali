.class public Lcom/transsion/camera/app/common/ui/HintInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAeAfLock:Z

.field private mBackgroundEnabled:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private final mFeedbackType:I

.field private mHighlight:Z

.field private mIsAsdDynamic:Z

.field private mIsCelebritySceneGuideSupport:Z

.field private mIsDocumentGuideSupport:Z

.field private mIsFlareCaptureGuideSupport:Z

.field private mIsMagicSkyGuideSupport:Z

.field private mIsPmasterGuideSupport:Z

.field private mIsSuperNightGuideSupport:Z

.field private mKey:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mMessageType:I

.field private mOtherDrawable:Landroid/graphics/drawable/Drawable;

.field private mOtherMessage:Ljava/lang/String;

.field private mPriority:I

.field private mProgressType:I

.field private mTwinkleGuideEnabled:Z

.field private mTwinkleGuideMode:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HintInfo"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/HintInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mMessageType:I

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mBackgroundEnabled:Z

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mHighlight:Z

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsAsdDynamic:Z

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mTwinkleGuideEnabled:Z

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsSuperNightGuideSupport:Z

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsMagicSkyGuideSupport:Z

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsPmasterGuideSupport:Z

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsDocumentGuideSupport:Z

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsFlareCaptureGuideSupport:Z

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsCelebritySceneGuideSupport:Z

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mTwinkleGuideMode:Ljava/lang/String;

    .line 99
    iput p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mType:I

    const/16 p1, 0x68

    .line 100
    iput p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mFeedbackType:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mMessageType:I

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mBackgroundEnabled:Z

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mHighlight:Z

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsAsdDynamic:Z

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mTwinkleGuideEnabled:Z

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsSuperNightGuideSupport:Z

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsMagicSkyGuideSupport:Z

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsPmasterGuideSupport:Z

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsDocumentGuideSupport:Z

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsFlareCaptureGuideSupport:Z

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsCelebritySceneGuideSupport:Z

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mTwinkleGuideMode:Ljava/lang/String;

    .line 104
    iput p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mType:I

    .line 105
    iput p2, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mFeedbackType:I

    return-void
.end method


# virtual methods
.method public aeAfLock(Z)V
    .registers 2

    .line 173
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mAeAfLock:Z

    return-void
.end method

.method public aeAfLock()Z
    .registers 1

    .line 177
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mAeAfLock:Z

    return p0
.end method

.method public enableBackground(Z)V
    .registers 2

    .line 145
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mBackgroundEnabled:Z

    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDuration()I
    .registers 1

    .line 257
    iget p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mDuration:I

    return p0
.end method

.method public getFeedbackType()I
    .registers 1

    .line 113
    iget p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mFeedbackType:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getOtherDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mOtherDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getOtherMessage()Ljava/lang/String;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mOtherMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getPriority()I
    .registers 1

    .line 245
    iget p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mPriority:I

    return p0
.end method

.method public getProgressType()I
    .registers 1

    .line 157
    iget p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mProgressType:I

    return p0
.end method

.method public getTwinkleGuideMode()Ljava/lang/String;
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mTwinkleGuideMode:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 109
    iget p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mType:I

    return p0
.end method

.method public isAsdDynamic()Z
    .registers 1

    .line 165
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsAsdDynamic:Z

    return p0
.end method

.method public isBackgroundEnabled()Z
    .registers 1

    .line 141
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mBackgroundEnabled:Z

    return p0
.end method

.method public isCelebritySceneGuideSupport()Z
    .registers 1

    .line 205
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsCelebritySceneGuideSupport:Z

    return p0
.end method

.method public isDocumentGuideSupport()Z
    .registers 1

    .line 197
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsDocumentGuideSupport:Z

    return p0
.end method

.method public isFlareCaptureGuideSupport()Z
    .registers 1

    .line 201
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsFlareCaptureGuideSupport:Z

    return p0
.end method

.method public isHighlight()Z
    .registers 1

    .line 153
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mHighlight:Z

    return p0
.end method

.method public isMagicSkyGuideSupport()Z
    .registers 1

    .line 185
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsMagicSkyGuideSupport:Z

    return p0
.end method

.method public isPmasterGuideSupport()Z
    .registers 1

    .line 193
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsPmasterGuideSupport:Z

    return p0
.end method

.method public isSuperNightGuideSupport()Z
    .registers 1

    .line 189
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsSuperNightGuideSupport:Z

    return p0
.end method

.method public isTwinkleEnabled()Z
    .registers 1

    .line 181
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mTwinkleGuideEnabled:Z

    return p0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDuration(I)V
    .registers 2

    .line 253
    iput p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mDuration:I

    return-void
.end method

.method public setHighlight(Z)V
    .registers 2

    .line 149
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mHighlight:Z

    return-void
.end method

.method public setIsAsdDynamic(Z)V
    .registers 2

    .line 169
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsAsdDynamic:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setMessageType(I)V
    .registers 2

    .line 209
    iput p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mMessageType:I

    return-void
.end method

.method public setOtherDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mOtherDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOtherMessage(Ljava/lang/String;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mOtherMessage:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .registers 2

    .line 249
    iput p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mPriority:I

    return-void
.end method

.method public setProgressType(I)V
    .registers 2

    .line 161
    iput p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mProgressType:I

    return-void
.end method

.method public setTwinkleEnableType(ZZZZZZ)V
    .registers 7

    .line 227
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsMagicSkyGuideSupport:Z

    .line 228
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsSuperNightGuideSupport:Z

    .line 229
    iput-boolean p3, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsPmasterGuideSupport:Z

    .line 230
    iput-boolean p4, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsDocumentGuideSupport:Z

    .line 231
    iput-boolean p5, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsFlareCaptureGuideSupport:Z

    .line 232
    iput-boolean p6, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsCelebritySceneGuideSupport:Z

    return-void
.end method

.method public setTwinkleEnabled(Z)V
    .registers 5

    .line 217
    sget-object v0, Lcom/transsion/camera/app/common/ui/HintInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTwinkleEnabled], twinkleEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mTwinkleGuideEnabled:Z

    return-void
.end method

.method public setTwinkleGuideMode(Ljava/lang/String;)V
    .registers 5

    .line 240
    sget-object v0, Lcom/transsion/camera/app/common/ui/HintInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTwinkleGuideMode], twinkleGuideMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 241
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mTwinkleGuideMode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAsdDynamic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mIsAsdDynamic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOtherMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/HintInfo;->mOtherMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
