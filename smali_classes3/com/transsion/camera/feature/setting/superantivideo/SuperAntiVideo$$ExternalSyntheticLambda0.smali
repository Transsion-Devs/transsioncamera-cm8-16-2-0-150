.class public final synthetic Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->$r8$lambda$U7W4LVJ_mtvdaWv5Avz8Rikanc8(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    return-void
.end method
