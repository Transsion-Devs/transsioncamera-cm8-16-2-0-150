.class public final Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$getDataPostProcessorPipeLine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/task/IPipeLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->getDataPostProcessorPipeLine()Lbytekn/foundation/task/IPipeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doJob(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const-string p0, "param"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
