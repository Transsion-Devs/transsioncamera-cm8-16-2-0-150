.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;->$r8$lambda$5atzfXnwZoq5q3ZE8CJPLvZo4k4(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
