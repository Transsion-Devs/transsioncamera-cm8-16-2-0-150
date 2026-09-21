.class public Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;->mList:Ljava/util/List;

    return-void
.end method

.method public static emptyList()Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice<",
            "TT;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;->mList:Ljava/util/List;

    return-object p0
.end method
