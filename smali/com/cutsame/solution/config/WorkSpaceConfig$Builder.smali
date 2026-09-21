.class public final Lcom/cutsame/solution/config/WorkSpaceConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/config/WorkSpaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cutsame/solution/config/WorkSpaceConfig$Builder;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/cutsame/solution/config/WorkSpaceConfig;
    .registers 2

    .line 1
    new-instance v0, Lcom/cutsame/solution/config/WorkSpaceConfig;

    invoke-direct {v0, p0}, Lcom/cutsame/solution/config/WorkSpaceConfig;-><init>(Lcom/cutsame/solution/config/WorkSpaceConfig$Builder;)V

    return-object v0
.end method

.method public final getWorkSpaceDir()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/WorkSpaceConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method
