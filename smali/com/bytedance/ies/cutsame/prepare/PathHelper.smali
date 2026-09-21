.class public final Lcom/bytedance/ies/cutsame/prepare/PathHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/prepare/PathHelper;

.field private static workspacePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/PathHelper;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/prepare/PathHelper;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/PathHelper;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/PathHelper;

    .line 13
    const-string v0, ""

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/PathHelper;->workspacePath:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkWorkSpace(Landroid/content/Context;)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/PathHelper;->workspacePath:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 20
    sget-object p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;

    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->MEDIA_CACHE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;)Ljava/lang/String;

    move-result-object p0

    .line 22
    sget-object p1, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/ies/cutsame/util/FileUtils;->mkdirs(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 23
    sput-object p0, Lcom/bytedance/ies/cutsame/prepare/PathHelper;->workspacePath:Ljava/lang/String;

    :cond_20
    return-void
.end method

.method public final getWorkspacePath()Ljava/lang/String;
    .registers 1

    .line 13
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/PathHelper;->workspacePath:Ljava/lang/String;

    return-object p0
.end method

.method public final setWorkspacePath(Ljava/lang/String;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sput-object p1, Lcom/bytedance/ies/cutsame/prepare/PathHelper;->workspacePath:Ljava/lang/String;

    return-void
.end method
