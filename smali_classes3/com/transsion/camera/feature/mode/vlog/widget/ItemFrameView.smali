.class public Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCanvasRect:Landroid/graphics/RectF;

.field private final mClipPath:Landroid/graphics/Path;

.field private final mDrawRect:Landroid/graphics/Rect;

.field private mEndFrameNumber:I

.field private final mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

.field private mFramesCount:I

.field private mLeftRefreshThreshold:I

.field private mLoadPath:Ljava/lang/String;

.field private final mRadius:I

.field private mRefreshCallback:Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;

.field private mRightRefreshThreshold:I

.field private mStartFrameNumber:I

.field private mVideoDuration:J

.field private mVideoFrameHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;


# direct methods
.method public static synthetic $r8$lambda$ilMuUJJDRqqlghj47zvfG4-lSJ0(Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->lambda$initFrames$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_ItemFrame"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 p1, 0x0

    .line 34
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mVideoDuration:J

    .line 41
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mLoadPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mStartFrameNumber:I

    .line 44
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mEndFrameNumber:I

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mLeftRefreshThreshold:I

    .line 50
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mRightRefreshThreshold:I

    .line 52
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mDrawRect:Landroid/graphics/Rect;

    .line 53
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mCanvasRect:Landroid/graphics/RectF;

    .line 54
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mClipPath:Landroid/graphics/Path;

    .line 74
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_frame_select_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mRadius:I

    return-void
.end method

.method private calculateFrames()I
    .registers 6

    .line 230
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mVideoDuration:J

    long-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getFrameDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v1, v0

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_13

    add-int/lit8 v1, v1, 0x1

    .line 237
    :cond_13
    sget-object v2, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateFrames, realFrames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", frames: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", real width: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    .line 238
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbWidth()I

    move-result p0

    mul-int/2addr p0, v1

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 237
    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Canvas;)V
    .registers 8

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    .line 192
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    .line 193
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbHeight()I

    move-result v2

    const/4 v3, 0x0

    .line 189
    invoke-virtual {v0, p2, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p2, 0x0

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p1, p2, p0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawTrack(Landroid/graphics/Canvas;)V
    .registers 7

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    int-to-float v0, v0

    .line 166
    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mVideoDuration:J

    long-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getPixelPerMs()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v1, v1

    .line 167
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mCanvasRect:Landroid/graphics/RectF;

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 169
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mRadius:I

    if-lez v0, :cond_37

    .line 170
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mClipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mCanvasRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v0, v0

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto :goto_3c

    .line 174
    :cond_37
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mCanvasRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 177
    :goto_3c
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mStartFrameNumber:I

    :goto_3e
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mEndFrameNumber:I

    if-gt v0, v1, :cond_59

    .line 178
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mVideoFrameHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mLoadPath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->getPositionBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 181
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbWidth()I

    move-result v2

    mul-int/2addr v2, v0

    invoke-direct {p0, v1, v2, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->drawBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Canvas;)V

    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 185
    :cond_59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private initFrames()V
    .registers 6

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mLoadPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 201
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "initFrames, no path set to analysis"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 205
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mVideoFrameHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;

    if-eqz v0, :cond_17

    .line 206
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->stopGetFrame()V

    .line 209
    :cond_17
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mLoadPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    new-instance v4, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mVideoFrameHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;

    .line 218
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mStartFrameNumber:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mEndFrameNumber:I

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->checkMemoryCache(II)V

    return-void
.end method

.method private internalInvalidate()V
    .registers 3

    .line 222
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 225
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private synthetic lambda$initFrames$0()V
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mRefreshCallback:Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;

    if-eqz v0, :cond_7

    .line 211
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;->refresh()V

    .line 214
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 215
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->internalInvalidate()V

    return-void
.end method

.method private needRefresh(I)Z
    .registers 3

    .line 145
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mRightRefreshThreshold:I

    if-ge p1, v0, :cond_d

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mLeftRefreshThreshold:I

    if-gt p1, p0, :cond_b

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getFrameViewWidth()I
    .registers 3

    .line 150
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mVideoDuration:J

    long-to-float v0, v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getPixelPerMs()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 251
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mVideoFrameHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;

    if-eqz p0, :cond_d

    .line 254
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->stopGetFrame()V

    .line 255
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;->clearCache()V

    :cond_d
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 155
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mVideoFrameHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;

    if-eqz v0, :cond_a

    .line 158
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->drawTrack(Landroid/graphics/Canvas;)V

    :cond_a
    return-void
.end method

.method public setRefreshCallback(Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mRefreshCallback:Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$IRefreshCallback;

    return-void
.end method

.method public stopGetFrame()V
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mVideoFrameHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;

    if-eqz p0, :cond_7

    .line 118
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->stopGetFrame()V

    :cond_7
    return-void
.end method

.method public updateData(Ljava/lang/String;JJII)V
    .registers 8

    .line 88
    iput-wide p4, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mVideoDuration:J

    .line 89
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->calculateFrames()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mFramesCount:I

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    long-to-float p3, p4

    iget-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {p4}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getPixelPerMs()F

    move-result p4

    mul-float/2addr p4, p3

    float-to-int p4, p4

    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mLoadPath:Ljava/lang/String;

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {p1, p7}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->setThumbnailOrientation(I)V

    .line 97
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "updateData, width: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {p4}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getPixelPerMs()F

    move-result p4

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbWidth()I

    move-result p1

    div-int/2addr p6, p1

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mStartFrameNumber:I

    .line 102
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mFramesCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mEndFrameNumber:I

    .line 104
    div-int/lit8 p2, p6, 0x2

    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mLeftRefreshThreshold:I

    add-int/2addr p6, p1

    .line 105
    div-int/lit8 p6, p6, 0x2

    iput p6, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mRightRefreshThreshold:I

    .line 107
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->initFrames()V

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 109
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->internalInvalidate()V

    return-void
.end method

.method public updateScrollX(I)V
    .registers 2

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->mFrameInfo:Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FrameInfo;->getThumbWidth()I

    move-result p0

    div-int/2addr p1, p0

    return-void
.end method
