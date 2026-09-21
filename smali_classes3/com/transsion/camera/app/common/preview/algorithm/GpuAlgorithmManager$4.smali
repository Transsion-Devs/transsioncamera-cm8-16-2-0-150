.class Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->updatePreviewSize(Landroid/util/Size;Landroid/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

.field final synthetic val$newPreviewSize:Landroid/util/Size;

.field final synthetic val$oldPreviewSize:Landroid/util/Size;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;Landroid/util/Size;Landroid/util/Size;)V
    .registers 4

    .line 200
    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$4;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    iput-object p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$4;->val$oldPreviewSize:Landroid/util/Size;

    iput-object p3, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$4;->val$newPreviewSize:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$4;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->-$$Nest$fgetmGpuProcessers(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    .line 204
    iget-object v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$4;->val$oldPreviewSize:Landroid/util/Size;

    iget-object v3, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$4;->val$newPreviewSize:Landroid/util/Size;

    invoke-interface {v1, v2, v3}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->updatePreviewSize(Landroid/util/Size;Landroid/util/Size;)V

    goto :goto_a

    :cond_1e
    return-void
.end method
