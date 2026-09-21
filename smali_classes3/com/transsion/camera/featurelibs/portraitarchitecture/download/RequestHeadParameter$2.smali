.class Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$2;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->updataGAID(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$2;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    iput-object p3, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$2;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$2;->val$context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$mgetGAID(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$fputgaid(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;Ljava/lang/String;)V

    return-void
.end method
