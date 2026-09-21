.class Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/media/ITextureHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$1;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setTextureUpdater(Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;)V
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager$1;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;->-$$Nest$fputmTextureUpdater(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoManager;Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;)V

    return-void
.end method
