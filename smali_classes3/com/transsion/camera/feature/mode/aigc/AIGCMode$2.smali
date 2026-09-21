.class Lcom/transsion/camera/feature/mode/aigc/AIGCMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


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

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$2;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$2;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->access$300(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAbsolutePreviewRectChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$2;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$2;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->access$400(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRelativePreviewRectChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCMode$2;->this$0:Lcom/transsion/camera/feature/mode/aigc/AIGCMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCMode;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/mode/aigc/AIGCMode;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
