.class public Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProParamsHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method


# virtual methods
.method public getDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_62

    goto :goto_42

    :sswitch_c
    const-string p0, "key_exposure_time"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_42

    :cond_15
    const/4 v0, 0x4

    goto :goto_42

    :sswitch_17
    const-string p0, "key_exposure"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_42

    :cond_20
    const/4 v0, 0x3

    goto :goto_42

    :sswitch_22
    const-string p0, "key_iso"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_42

    :cond_2b
    const/4 v0, 0x2

    goto :goto_42

    :sswitch_2d
    const-string p0, "key_manual_focus"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_42

    :cond_36
    const/4 v0, 0x1

    goto :goto_42

    :sswitch_38
    const-string p0, "key_manual_white_balance"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    const-wide/16 p0, -0x1

    packed-switch v0, :pswitch_data_78

    .line 60
    const-string p0, ""

    return-object p0

    .line 46
    :pswitch_4a
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 43
    :pswitch_4f
    sget-object p0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    invoke-virtual {p0}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 49
    :pswitch_56
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 55
    :pswitch_5b
    const-string p0, "continuous-picture"

    return-object p0

    .line 52
    :pswitch_5e
    const-string p0, "auto"

    return-object p0

    nop

    :sswitch_data_62
    .sparse-switch
        -0x56633213 -> :sswitch_38
        -0x3e826f01 -> :sswitch_2d
        -0x3095e15b -> :sswitch_22
        -0x1363519 -> :sswitch_17
        0x1964f925 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_5b
        :pswitch_56
        :pswitch_4f
        :pswitch_4a
    .end packed-switch
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_professional"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAutoSwitchOn(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 34
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    .line 35
    sget-object p1, Lcom/transsion/camera/feature/mode/professional/helper/ProParamsHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAutoSwitchOn : currentValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", isAutoOn = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method
