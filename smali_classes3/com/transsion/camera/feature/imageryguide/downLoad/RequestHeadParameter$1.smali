.class Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 5

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->-$$Nest$fputmodel(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->-$$Nest$mgetGAID(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->-$$Nest$fputgaid(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->-$$Nest$mgetMcc(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->-$$Nest$fputmcc(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->-$$Nest$mgetLanguage(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->-$$Nest$fputlanguage(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->-$$Nest$mgetVersionCode(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->-$$Nest$fputapkVersion(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    invoke-static {v2}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->-$$Nest$fgetmodel(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",gaid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    invoke-static {v2}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->-$$Nest$fgetgaid(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    invoke-static {v2}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->-$$Nest$fgetmcc(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    invoke-static {v2}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->-$$Nest$fgetlanguage(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",apkVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter$1;->this$0:Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;->-$$Nest$fgetapkVersion(Lcom/transsion/camera/feature/imageryguide/downLoad/RequestHeadParameter;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
