.class Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;-><init>(Landroid/content/Context;)V
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

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    iput-object p3, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$fputmodel(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$mgetGAID(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$fputgaid(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$mgetMcc(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$fputmcc(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$mgetLanguage(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$fputlanguage(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$mgetVersionCode(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$fputapkVersion(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    invoke-static {v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$fgetmodel(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",gaid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    invoke-static {v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$fgetgaid(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    invoke-static {v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$fgetmcc(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    invoke-static {v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$fgetlanguage(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",apkVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;->-$$Nest$fgetapkVersion(Lcom/transsion/camera/featurelibs/portraitarchitecture/download/RequestHeadParameter;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
