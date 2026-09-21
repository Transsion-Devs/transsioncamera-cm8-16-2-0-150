.class Lcom/cdv/io/NvCamera$1;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cdv/io/NvCamera;-><init>(ILandroid/hardware/Camera;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cdv/io/NvCamera;


# direct methods
.method constructor <init>(Lcom/cdv/io/NvCamera;Landroid/content/Context;I)V
    .registers 4

    .line 57
    iput-object p1, p0, Lcom/cdv/io/NvCamera$1;->this$0:Lcom/cdv/io/NvCamera;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 2

    .line 61
    iget-object p0, p0, Lcom/cdv/io/NvCamera$1;->this$0:Lcom/cdv/io/NvCamera;

    # getter for: Lcom/cdv/io/NvCamera;->m_cameraId:I
    invoke-static {p0}, Lcom/cdv/io/NvCamera;->access$000(Lcom/cdv/io/NvCamera;)I

    move-result p0

    # invokes: Lcom/cdv/io/NvCamera;->notifyOrientationChange(II)V
    invoke-static {p0, p1}, Lcom/cdv/io/NvCamera;->access$100(II)V

    return-void
.end method
