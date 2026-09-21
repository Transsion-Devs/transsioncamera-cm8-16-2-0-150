.class synthetic Lcom/ss/android/ttve/model/VEFrame$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/model/VEFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ss$android$ttve$model$VEFrame$ETEPixelFormat:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 507
    invoke-static {}, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->values()[Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ss/android/ttve/model/VEFrame$2;->$SwitchMap$com$ss$android$ttve$model$VEFrame$ETEPixelFormat:[I

    :try_start_9
    sget-object v1, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPIXEL_FORMAT_YUV420:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/ss/android/ttve/model/VEFrame$2;->$SwitchMap$com$ss$android$ttve$model$VEFrame$ETEPixelFormat:[I

    sget-object v1, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPIXEL_FORMAT_JPEG:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
