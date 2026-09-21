.class public Lcom/transsion/common/thubutils/AppProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/thubutils/IAppProperties;


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/lang/String;

.field public static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/transsion/common/thubutils/AppProperties;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .registers 5

    .line 8
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_37

    .line 10
    :cond_a
    :goto_a
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2e

    const-string v1, "="

    const/4 v2, 0x2

    .line 11
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 12
    array-length v1, p1

    if-ne v1, v2, :cond_a

    const/4 v1, 0x0

    .line 13
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 14
    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 15
    sget-object v2, Lcom/transsion/common/thubutils/AppProperties;->a:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_32

    goto :goto_a

    .line 18
    :cond_2e
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_37

    goto :goto_42

    :catchall_32
    move-exception p1

    .line 19
    :try_start_33
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_36

    :catchall_36
    :try_start_36
    throw p1
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_37} :catch_37

    :catch_37
    move-exception p1

    const-string v0, "AppProperties"

    const-string v1, "cannot read content from file"

    .line 30
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_42
    return-void
.end method

.method public final a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_26

    aget-object v2, p1, v1

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 5
    invoke-virtual {p0, v2, p2, p3}, Lcom/transsion/common/thubutils/AppProperties;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_23

    .line 6
    :cond_16
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 7
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_26
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    .line 32
    sget-object v0, Lcom/transsion/common/thubutils/AppProperties;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readAllPropFiles directoryPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppProperties"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0, v1}, Lcom/transsion/common/thubutils/AppProperties;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_45
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, ".prop"

    invoke-virtual {p0, v1, p1, v0}, Lcom/transsion/common/thubutils/AppProperties;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter readPropFiles count="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppProperties"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 6
    invoke-virtual {p0, v0}, Lcom/transsion/common/thubutils/AppProperties;->a(Ljava/io/File;)V

    goto :goto_2f

    :cond_3f
    return-void
.end method

.method public final b()Z
    .registers 7

    const-string v0, "AppProperties"

    const/4 v1, 0x0

    .line 7
    :try_start_3
    sget-object v2, Lcom/transsion/common/thubutils/AppProperties;->d:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x64

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "not initialize."

    .line 9
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_14} :catch_17

    return v1

    :cond_15
    const/4 v0, 0x1

    return v0

    :catch_17
    move-exception v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "AppProperties"

    const-string v1, "enter get."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/transsion/common/thubutils/AppProperties;->a:Ljava/util/Map;

    const-string v1, ""

    if-nez v0, :cond_14

    .line 3
    invoke-virtual {p0}, Lcom/transsion/common/thubutils/AppProperties;->b()Z

    move-result v0

    if-nez v0, :cond_14

    return-object v1

    .line 8
    :cond_14
    sget-object v0, Lcom/transsion/common/thubutils/AppProperties;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1f

    return-object v1

    :cond_1f
    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "AppProperties"

    const-string v1, "enter get."

    .line 11
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0, p1}, Lcom/transsion/common/thubutils/AppProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-object p2

    :cond_14
    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5

    const-string v0, "AppProperties"

    const-string v1, "enter getBoolean."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/transsion/common/thubutils/AppProperties;->a:Ljava/util/Map;

    if-nez v0, :cond_12

    .line 3
    invoke-virtual {p0}, Lcom/transsion/common/thubutils/AppProperties;->b()Z

    move-result v0

    if-nez v0, :cond_12

    return p2

    .line 8
    :cond_12
    sget-object v0, Lcom/transsion/common/thubutils/AppProperties;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_21

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_21
    return p2
.end method

.method public initialize(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter initialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppProperties"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/transsion/common/thubutils/AppProperties;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string p1, "Not fisrt enter."

    .line 3
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_26
    sput-object p1, Lcom/transsion/common/thubutils/AppProperties;->b:Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/transsion/common/thubutils/AppProperties;->c:Ljava/util/List;

    if-nez v0, :cond_32

    .line 10
    invoke-static {}, Lthubutils/b;->a()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/common/thubutils/AppProperties;->c:Ljava/util/List;

    .line 13
    :cond_32
    sget-object v0, Lcom/transsion/common/thubutils/AppProperties;->a:Ljava/util/Map;

    if-nez v0, :cond_3d

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/common/thubutils/AppProperties;->a:Ljava/util/Map;

    .line 16
    :cond_3d
    invoke-virtual {p0, p1}, Lcom/transsion/common/thubutils/AppProperties;->a(Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/transsion/common/thubutils/AppProperties;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
