.class public Lcom/cutsame/solution/config/WorkSpaceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cutsame/solution/config/WorkSpaceConfig$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cutsame/solution/config/WorkSpaceConfig$Builder;)V
    .registers 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/cutsame/solution/config/WorkSpaceConfig$Builder;->getWorkSpaceDir()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cutsame/solution/config/WorkSpaceConfig;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getWorkSpaceDir()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/WorkSpaceConfig;->a:Ljava/lang/String;

    return-object p0
.end method
