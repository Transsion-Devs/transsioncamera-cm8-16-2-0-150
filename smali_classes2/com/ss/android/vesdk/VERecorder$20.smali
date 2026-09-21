.class synthetic Lcom/ss/android/vesdk/VERecorder$20;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ss$android$vesdk$VEPreviewRadio:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 3376
    invoke-static {}, Lcom/ss/android/vesdk/VEPreviewRadio;->values()[Lcom/ss/android/vesdk/VEPreviewRadio;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ss/android/vesdk/VERecorder$20;->$SwitchMap$com$ss$android$vesdk$VEPreviewRadio:[I

    :try_start_9
    sget-object v1, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_9_16:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/ss/android/vesdk/VERecorder$20;->$SwitchMap$com$ss$android$vesdk$VEPreviewRadio:[I

    sget-object v1, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_3_4:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/ss/android/vesdk/VERecorder$20;->$SwitchMap$com$ss$android$vesdk$VEPreviewRadio:[I

    sget-object v1, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_1_1:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/ss/android/vesdk/VERecorder$20;->$SwitchMap$com$ss$android$vesdk$VEPreviewRadio:[I

    sget-object v1, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_ROUND:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/ss/android/vesdk/VERecorder$20;->$SwitchMap$com$ss$android$vesdk$VEPreviewRadio:[I

    sget-object v1, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_FULL:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method
