.class public final Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$run$$inlined$continueWith$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/task/IPipeLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $originIPipeLine:Lbytekn/foundation/task/IPipeLine;

.field final synthetic $pipeLine2:Lbytekn/foundation/task/IPipeLine;


# direct methods
.method public constructor <init>(Lbytekn/foundation/task/IPipeLine;Lbytekn/foundation/task/IPipeLine;)V
    .registers 3

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$run$$inlined$continueWith$1;->$originIPipeLine:Lbytekn/foundation/task/IPipeLine;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$run$$inlined$continueWith$1;->$pipeLine2:Lbytekn/foundation/task/IPipeLine;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doJob(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$run$$inlined$continueWith$1;->$originIPipeLine:Lbytekn/foundation/task/IPipeLine;

    invoke-interface {v0, p1}, Lbytekn/foundation/task/IPipeLine;->doJob(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/BaseUrlFetcherTask$run$$inlined$continueWith$1;->$pipeLine2:Lbytekn/foundation/task/IPipeLine;

    invoke-interface {p0, p1}, Lbytekn/foundation/task/IPipeLine;->doJob(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
