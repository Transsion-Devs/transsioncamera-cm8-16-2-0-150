.class Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$1;->this$0:Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$1;->this$0:Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;

    # getter for: Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z
    invoke-static {v0}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->access$000(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$1;->this$0:Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->unInit()V

    :cond_d
    return-void
.end method
