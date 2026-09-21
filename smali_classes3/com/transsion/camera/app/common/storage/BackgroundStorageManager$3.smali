.class Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->registerContentObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;


# direct methods
.method public static synthetic $r8$lambda$-8nhWSKVf22vTZOhw8JqerdS9ns(ILandroid/net/Uri;)Z
    .registers 2

    .line 254
    const/16 p1, 0x10

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$5atzfXnwZoq5q3ZE8CJPLvZo4k4(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;Landroid/net/Uri;)Ljava/lang/Long;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;->lambda$onChange$1(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$m2viEs6t_bhui4zRpYOcbPIGOIQ(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;Landroid/net/Uri;Ljava/lang/Long;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;->lambda$onChange$2(Landroid/net/Uri;Ljava/lang/Long;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Landroid/os/Handler;)V
    .registers 3

    .line 246
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$onChange$1(Landroid/net/Uri;)Ljava/lang/Long;
    .registers 4

    .line 257
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmLowQualityPictureTimestampKey(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onChange$2(Landroid/net/Uri;Ljava/lang/Long;)V
    .registers 6

    .line 263
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLowQualityPictureRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$mclearLowQualityPictureCache(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;J)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5

    .line 249
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 250
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmLowQualityPictureTimestampKey(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    return-void

    .line 253
    :cond_10
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda0;-><init>(I)V

    .line 254
    invoke-virtual {p1, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    new-instance p3, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;)V

    .line 255
    invoke-virtual {p1, p3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance p3, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;Landroid/net/Uri;)V

    .line 262
    invoke-virtual {p1, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
