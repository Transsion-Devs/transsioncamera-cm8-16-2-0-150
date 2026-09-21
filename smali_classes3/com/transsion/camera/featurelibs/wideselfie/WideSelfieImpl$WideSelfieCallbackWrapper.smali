.class final Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WideSelfieCallbackWrapper"
.end annotation


# instance fields
.field private mCachedResult:Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

.field private final mDelegate:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V
    .registers 2

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->mDelegate:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;-><init>(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V

    return-void
.end method

.method private cacheProcessResult(Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;)Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->mCachedResult:Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

    if-nez v0, :cond_7

    .line 211
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->mCachedResult:Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

    return-object p1

    .line 214
    :cond_7
    iget v1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mCommand:I

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->mCachedResult:Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

    return-object p1

    .line 219
    :cond_f
    iget v1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mProgress:I

    if-gez v1, :cond_17

    .line 220
    iget v1, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mProgress:I

    iput v1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mProgress:I

    .line 222
    :cond_17
    iget v1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mDirection:I

    if-nez v1, :cond_1f

    .line 223
    iget v1, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mDirection:I

    iput v1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mDirection:I

    .line 225
    :cond_1f
    iget-object v1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mData:[B

    if-nez v1, :cond_37

    .line 226
    iget v1, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageWidth:I

    iput v1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageWidth:I

    .line 227
    iget v1, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageHeight:I

    iput v1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageHeight:I

    .line 228
    iget v1, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageFormat:I

    iput v1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageFormat:I

    .line 229
    iget-object v1, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mData:[B

    iput-object v1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mData:[B

    .line 230
    iget-object v0, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mThumbOffset:Landroid/graphics/Point;

    iput-object v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mThumbOffset:Landroid/graphics/Point;

    .line 232
    :cond_37
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mThumbLocation:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->mCachedResult:Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

    iget-object v0, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mThumbLocation:Landroid/graphics/Rect;

    iput-object v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mThumbLocation:Landroid/graphics/Rect;

    .line 235
    :cond_45
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->mCachedResult:Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

    return-object p1
.end method


# virtual methods
.method public onProcessResult(ILcom/transsion/camera/featurelibs/wideselfie/ProcessResult;)V
    .registers 3

    .line 202
    invoke-direct {p0, p2}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->cacheProcessResult(Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;)Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

    move-result-object p2

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->mDelegate:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    if-eqz p0, :cond_b

    .line 205
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;->onProcessResult(ILcom/transsion/camera/featurelibs/wideselfie/ProcessResult;)V

    :cond_b
    return-void
.end method
