.class Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo;->loadItems(Landroid/content/Context;Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$ILoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$ILoadCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$ILoadCallback;)V
    .registers 3

    .line 17
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$1;->val$callback:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$ILoadCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateFactory;->loadTempItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 17
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$1;->val$callback:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$ILoadCallback;

    if-eqz p0, :cond_a

    .line 27
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$ILoadCallback;->onLoad(Ljava/util/List;)V

    :cond_a
    return-void
.end method
