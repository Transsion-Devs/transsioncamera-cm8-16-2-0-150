.class public final synthetic Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

.field public final synthetic f$1:Landroid/graphics/Canvas;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;Landroid/graphics/Canvas;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Canvas;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/Connection;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->$r8$lambda$wQFAVIUSs_nfZ-BaFJw-ei9gUU8(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;Landroid/graphics/Canvas;Ljava/util/List;Lcom/google/mediapipe/tasks/components/containers/Connection;)V

    return-void
.end method
