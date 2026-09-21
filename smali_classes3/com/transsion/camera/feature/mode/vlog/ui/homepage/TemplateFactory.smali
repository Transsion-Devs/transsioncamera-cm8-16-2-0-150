.class final Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_TemplateFactory"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadTempItems(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_f

    .line 30
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "loadTempItems context is null"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 34
    :cond_f
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->loadLocalTemplate(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1c

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "loadTempItems failed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1c
    return-object p0
.end method
