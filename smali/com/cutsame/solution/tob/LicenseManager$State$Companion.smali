.class public final Lcom/cutsame/solution/tob/LicenseManager$State$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/tob/LicenseManager$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final valueOf(I)Lcom/cutsame/solution/tob/LicenseManager$State;
    .registers 2

    packed-switch p1, :pswitch_data_34

    .line 1
    sget-object p0, Lcom/cutsame/solution/tob/LicenseManager$State;->UN_KNOW_ERROR:Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0

    .line 2
    :pswitch_6
    sget-object p0, Lcom/cutsame/solution/tob/LicenseManager$State;->INIT_LICENSE_INFO_ERROR:Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0

    .line 3
    :pswitch_9
    sget-object p0, Lcom/cutsame/solution/tob/LicenseManager$State;->UN_KNOW_ERROR:Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0

    .line 4
    :pswitch_c
    sget-object p0, Lcom/cutsame/solution/tob/LicenseManager$State;->LICENSE_STATUS_ID_NOT_MATCH:Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0

    .line 5
    :pswitch_f
    sget-object p0, Lcom/cutsame/solution/tob/LicenseManager$State;->LICENSE_STATUS_NO_MATCH:Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0

    .line 6
    :pswitch_12
    sget-object p0, Lcom/cutsame/solution/tob/LicenseManager$State;->LICENSE_NO_FUNC:Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0

    .line 7
    :pswitch_15
    sget-object p0, Lcom/cutsame/solution/tob/LicenseManager$State;->LICENSE_STATUS_EXPIRED:Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0

    .line 8
    :pswitch_18
    sget-object p0, Lcom/cutsame/solution/tob/LicenseManager$State;->LICENSE_STATUS_INVALID:Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0

    .line 9
    :pswitch_1b
    sget-object p0, Lcom/cutsame/solution/tob/LicenseManager$State;->INVALID_BLOCK_COUNT:Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0

    .line 10
    :pswitch_1e
    sget-object p0, Lcom/cutsame/solution/tob/LicenseManager$State;->INVALID_VERSIONS:Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0

    .line 11
    :pswitch_21
    sget-object p0, Lcom/cutsame/solution/tob/LicenseManager$State;->TYPE_NOT_MATCH:Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0

    .line 12
    :pswitch_24
    sget-object p0, Lcom/cutsame/solution/tob/LicenseManager$State;->FILE_ERROR:Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0

    .line 13
    :pswitch_27
    sget-object p0, Lcom/cutsame/solution/tob/LicenseManager$State;->INVALID_APPID:Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0

    .line 14
    :pswitch_2a
    sget-object p0, Lcom/cutsame/solution/tob/LicenseManager$State;->INVALID_PATH:Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0

    .line 15
    :pswitch_2d
    sget-object p0, Lcom/cutsame/solution/tob/LicenseManager$State;->INVALID_FUNCNAME:Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0

    .line 16
    :pswitch_30
    sget-object p0, Lcom/cutsame/solution/tob/LicenseManager$State;->SUCCESS:Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
