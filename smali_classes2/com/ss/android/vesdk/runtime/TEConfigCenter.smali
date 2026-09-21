.class public Lcom/ss/android/vesdk/runtime/TEConfigCenter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 12
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .registers 0

    .line 38
    invoke-static {}, Lcom/ss/android/vesdk/runtime/TEConfigCenter;->nativeClear()V

    return-void
.end method

.method public static native nativeClear()V
.end method

.method public static native nativeSetBoolConfig(Ljava/lang/String;ZZI)V
.end method

.method public static native nativeSetFloatConfig(Ljava/lang/String;FZI)V
.end method

.method public static native nativeSetIntConfig(Ljava/lang/String;IZI)V
.end method

.method public static native nativeSetStringConfig(Ljava/lang/String;Ljava/lang/String;ZI)V
.end method

.method public static setConfig(Ljava/lang/String;Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;)V
    .registers 5

    .line 16
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getABType()Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VEConfigCenter$ABType;->FOREFFECT:Lcom/ss/android/vesdk/VEConfigCenter$ABType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 17
    :goto_c
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getDataType()Lcom/ss/android/vesdk/VEConfigCenter$DataType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_60

    if-eq v1, v2, :cond_4a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4a

    const/4 v2, 0x3

    if-eq v1, v2, :cond_34

    const/4 v2, 0x4

    if-eq v1, v2, :cond_22

    return-void

    .line 32
    :cond_22
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getConfigType()Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p0, v1, v0, p1}, Lcom/ss/android/vesdk/runtime/TEConfigCenter;->nativeSetStringConfig(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void

    .line 28
    :cond_34
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getConfigType()Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p0, v1, v0, p1}, Lcom/ss/android/vesdk/runtime/TEConfigCenter;->nativeSetFloatConfig(Ljava/lang/String;FZI)V

    return-void

    .line 24
    :cond_4a
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getConfigType()Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p0, v1, v0, p1}, Lcom/ss/android/vesdk/runtime/TEConfigCenter;->nativeSetIntConfig(Ljava/lang/String;IZI)V

    return-void

    .line 19
    :cond_60
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getConfigType()Lcom/ss/android/vesdk/VEConfigCenter$ConfigType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p0, v1, v0, p1}, Lcom/ss/android/vesdk/runtime/TEConfigCenter;->nativeSetBoolConfig(Ljava/lang/String;ZZI)V

    return-void
.end method
