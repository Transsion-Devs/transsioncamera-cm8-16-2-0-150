.class Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 4

    .line 76
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAbsolutePreviewRectChanged absoluteRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 5

    .line 81
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRelativePreviewRectChanged relativeRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->-$$Nest$fputmPreviewRect(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;Landroid/graphics/Rect;)V

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->-$$Nest$mupdateLayout(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    # invokes: Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V
    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->access$000(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    return-void
.end method
