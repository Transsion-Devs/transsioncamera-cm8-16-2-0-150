.class public Lcom/transsion/widgetslib/util/Singleton;
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
.field private final CREATOR:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile INSTANCE:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/transsion/widgetslib/util/Singleton;->CREATOR:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/transsion/widgetslib/util/Singleton;->INSTANCE:Ljava/lang/Object;

    if-nez v0, :cond_18

    .line 19
    monitor-enter p0

    .line 20
    :try_start_5
    iget-object v0, p0, Lcom/transsion/widgetslib/util/Singleton;->INSTANCE:Ljava/lang/Object;

    if-nez v0, :cond_14

    .line 21
    iget-object v0, p0, Lcom/transsion/widgetslib/util/Singleton;->CREATOR:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/util/Singleton;->INSTANCE:Ljava/lang/Object;

    goto :goto_14

    :catchall_12
    move-exception v0

    goto :goto_16

    .line 23
    :cond_14
    :goto_14
    monitor-exit p0

    goto :goto_18

    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_12

    throw v0

    .line 25
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/transsion/widgetslib/util/Singleton;->INSTANCE:Ljava/lang/Object;

    return-object p0
.end method
