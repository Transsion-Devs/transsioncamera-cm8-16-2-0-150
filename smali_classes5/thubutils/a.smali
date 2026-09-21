.class public Lthubutils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static f:Z = true


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TI;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TI;>;"
        }
    .end annotation
.end field

.field public volatile d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field public final e:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Supplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TI;>;",
            "Ljava/util/function/Supplier<",
            "TI;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lthubutils/a;->a:Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lthubutils/a;->e:[Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lthubutils/a;->c:Ljava/util/function/Supplier;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lthubutils/a;->d:Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lthubutils/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TI;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lthubutils/a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 2
    iget-object p1, p0, Lthubutils/a;->d:Ljava/lang/Object;

    return-object p1

    .line 4
    :cond_7
    iget-object v0, p0, Lthubutils/a;->a:Ljava/lang/Class;

    monitor-enter v0

    .line 5
    :try_start_a
    iget-object v1, p0, Lthubutils/a;->d:Ljava/lang/Object;

    if-eqz v1, :cond_12

    .line 6
    iget-object p1, p0, Lthubutils/a;->d:Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    .line 8
    :cond_12
    iget-object v1, p0, Lthubutils/a;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lthubutils/c;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_127

    const/4 v1, 0x0

    .line 10
    iget-object v2, p0, Lthubutils/a;->a:Ljava/lang/Class;

    .line 11
    iget-object v3, p0, Lthubutils/a;->e:[Ljava/lang/String;

    if-eqz v3, :cond_df

    .line 12
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_28
    if-ge v6, v4, :cond_df

    aget-object v7, v3, v6
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_15b

    .line 15
    :try_start_2c
    new-instance v8, Ldalvik/system/PathClassLoader;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 16
    invoke-static {v7, v5, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Class;

    .line 17
    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    const/4 v9, 0x1

    .line 18
    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v9, v5, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_49
    .catchall {:try_start_2c .. :try_end_49} :catchall_4a

    goto :goto_a6

    :catchall_4a
    move-exception v8

    .line 21
    :try_start_4b
    sget-boolean v9, Lthubutils/a;->f:Z

    if-eqz v9, :cond_76

    const-string v9, "TranClassInfo"

    .line 22
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "instance failed. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " from "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a6

    :cond_76
    const-string v9, "TranClassInfo"

    .line 24
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "instance failed. className:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " from "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :goto_a6
    iget-object v7, p0, Lthubutils/a;->a:Ljava/lang/Class;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_db

    .line 29
    iput-object v1, p0, Lthubutils/a;->d:Ljava/lang/Object;

    .line 30
    sget-boolean p1, Lthubutils/a;->f:Z

    if-eqz p1, :cond_df

    const-string p1, "TranClassInfo"

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "instance successfully. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    :cond_db
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_28

    .line 36
    :cond_df
    :goto_df
    iget-object p1, p0, Lthubutils/a;->d:Ljava/lang/Object;

    if-nez p1, :cond_157

    .line 37
    iget-object p1, p0, Lthubutils/a;->c:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lthubutils/a;->d:Ljava/lang/Object;

    const-string p1, "TranClassInfo"

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lthubutils/a;->d:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " instead of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_107

    goto :goto_10d

    :cond_107
    iget-object v1, p0, Lthubutils/a;->e:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_10d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_157

    .line 44
    :cond_127
    iget-object p1, p0, Lthubutils/a;->c:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lthubutils/a;->d:Ljava/lang/Object;

    const-string p1, "TranClassInfo"

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[THUB] Feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lthubutils/a;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lthubutils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_157
    :goto_157
    monitor-exit v0
    :try_end_158
    .catchall {:try_start_4b .. :try_end_158} :catchall_15b

    .line 48
    iget-object p1, p0, Lthubutils/a;->d:Ljava/lang/Object;

    return-object p1

    :catchall_15b
    move-exception p1

    .line 49
    :try_start_15c
    monitor-exit v0
    :try_end_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_15b

    goto :goto_15f

    :goto_15e
    throw p1

    :goto_15f
    goto :goto_15e
.end method
