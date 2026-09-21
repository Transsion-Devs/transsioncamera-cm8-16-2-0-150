.class Lcom/transsion/camera/feature/mode/aigc/AIGCMode$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aigc/monitor/IFaceDetectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/AIGCMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$3;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetect([Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;)V
    .registers 6

    .line 146
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_b

    .line 148
    iput v1, v0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;->mFaceCount:I

    goto :goto_62

    .line 150
    :cond_b
    array-length v2, p1

    iput v2, v0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;->mFaceCount:I

    .line 151
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_62

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$3;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_62

    .line 152
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$3;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Landroid/graphics/Rect;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$3;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 152
    invoke-static {p1, v1, v2}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr v1, p1

    int-to-float p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$3;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Landroid/graphics/Rect;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$3;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr p1, v1

    iput p1, v0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;->mMaxFaceProportion:F

    .line 159
    :cond_62
    :goto_62
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$3;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->-$$Nest$fgetmAIGCUI(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Lcom/transsion/camera/feature/mode/aigc/AIGCUI;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->updateCaptureSuggestion(Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)V

    return-void
.end method
