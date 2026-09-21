.class public Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BULB_SUFFIX:Ljava/lang/String; = "_bulb"

.field public static final DURATION_AUTO:Ljava/lang/String; = "auto"

.field public static final DURATION_INFINITY:Ljava/lang/String; = "infinity"

.field private static final FLOWING_WATER_DEFAULT_DURATION:I = 0x1f40

.field private static final LIGHT_PAINTING_DEFAULT_DURATION:I = 0x1770

.field private static final STELLAR_TRACK_DEFAULT_DURATION:I = 0x3a980

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRAFFIC_DEFAULT_DURATION:I = 0xfa0

.field private static final sDefaultDurationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 43
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->sDefaultDurationMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method private bulbStatusOn(Ljava/lang/String;)Z
    .registers 3

    .line 70
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->montageBulbKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "off"

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 129
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private montageBulbKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_bulb"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private updateBulbStatus(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 82
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBulbStatus sceneKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->montageBulbKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bulbOn(Ljava/lang/String;)Z
    .registers 3

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 62
    :cond_8
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->bulbStatusOn(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getCaptureDuration(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_10

    .line 93
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getCaptureDuration invalid key!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 98
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_6e

    goto :goto_53

    :sswitch_1c
    const-string v0, "lightpainting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_53

    :cond_25
    const/4 v2, 0x4

    goto :goto_53

    :sswitch_27
    const-string v0, "star"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_53

    :cond_30
    const/4 v2, 0x3

    goto :goto_53

    :sswitch_32
    const-string v0, "flowingwater"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_53

    :cond_3b
    const/4 v2, 0x2

    goto :goto_53

    :sswitch_3d
    const-string/jumbo v0, "traffic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_53

    :cond_47
    const/4 v2, 0x1

    goto :goto_53

    :sswitch_49
    const-string v0, "stellartrack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_53

    :cond_52
    const/4 v2, 0x0

    :goto_53
    packed-switch v2, :pswitch_data_84

    return-object v1

    .line 100
    :pswitch_57
    const-string p0, "auto"

    return-object p0

    .line 108
    :pswitch_5a
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->bulbOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 109
    const-string p0, "infinity"

    return-object p0

    .line 111
    :cond_63
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->getDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 103
    :pswitch_68
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->getDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_6e
    .sparse-switch
        -0x7e5d776a -> :sswitch_49
        -0x3f9dde03 -> :sswitch_3d
        -0x3a4e425d -> :sswitch_32
        0x360652 -> :sswitch_27
        0x533119da -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_68
        :pswitch_5a
        :pswitch_5a
        :pswitch_57
        :pswitch_5a
    .end packed-switch
.end method

.method public getDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 141
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->sDefaultDurationMap:Ljava/util/Map;

    const-string v0, "0"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDuration(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 122
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getDuration invalid key!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    const-string p0, ""

    return-object p0

    .line 125
    :cond_10
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public switchBulbStatus(Ljava/lang/String;)V
    .registers 3

    .line 74
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->bulbStatusOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 75
    const-string v0, "off"

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->updateBulbStatus(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_c
    const-string v0, "on"

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->updateBulbStatus(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDuration(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 87
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDuration key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
