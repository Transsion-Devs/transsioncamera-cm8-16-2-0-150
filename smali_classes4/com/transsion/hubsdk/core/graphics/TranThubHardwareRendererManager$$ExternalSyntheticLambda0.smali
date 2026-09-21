.class public final synthetic Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/RenderNode;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/RenderNode;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/RenderNode;

    iput p2, p0, Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/RenderNode;

    iget v1, p0, Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/graphics/TranThubHardwareRendererManager;->$r8$lambda$eD0lq08hJW3fhdX8g1yHNn-X-wU(Landroid/graphics/RenderNode;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
