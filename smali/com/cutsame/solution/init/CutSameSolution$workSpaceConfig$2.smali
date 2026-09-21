.class public final Lcom/cutsame/solution/init/CutSameSolution$workSpaceConfig$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/init/CutSameSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cutsame/solution/init/CutSameSolution$workSpaceConfig$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/init/CutSameSolution$workSpaceConfig$2;

    invoke-direct {v0}, Lcom/cutsame/solution/init/CutSameSolution$workSpaceConfig$2;-><init>()V

    sput-object v0, Lcom/cutsame/solution/init/CutSameSolution$workSpaceConfig$2;->INSTANCE:Lcom/cutsame/solution/init/CutSameSolution$workSpaceConfig$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/cutsame/solution/config/WorkSpaceConfig;
    .registers 2

    .line 2
    new-instance p0, Lcom/cutsame/solution/config/WorkSpaceConfig$Builder;

    sget-object v0, Lcom/cutsame/solution/init/CutSameSolution;->INSTANCE:Lcom/cutsame/solution/init/CutSameSolution;

    invoke-virtual {v0}, Lcom/cutsame/solution/init/CutSameSolution;->getApplication$CutSameIF_release()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cutsame/solution/config/WorkSpaceConfig$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/cutsame/solution/config/WorkSpaceConfig$Builder;->build()Lcom/cutsame/solution/config/WorkSpaceConfig;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/cutsame/solution/init/CutSameSolution$workSpaceConfig$2;->invoke()Lcom/cutsame/solution/config/WorkSpaceConfig;

    move-result-object p0

    return-object p0
.end method
