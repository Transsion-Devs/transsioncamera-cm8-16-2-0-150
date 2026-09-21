.class public final synthetic Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;ILandroid/graphics/Rect;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;

    iput p2, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;

    iget v1, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;->$r8$lambda$XFa0ckgOWML7c8_rNH9hkWV9RwY(Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;ILandroid/graphics/Rect;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
