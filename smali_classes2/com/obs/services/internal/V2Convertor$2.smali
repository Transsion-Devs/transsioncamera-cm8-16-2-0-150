.class synthetic Lcom/obs/services/internal/V2Convertor$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/V2Convertor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$obs$services$model$EventTypeEnum:[I

.field static final synthetic $SwitchMap$com$obs$services$model$GroupGranteeEnum:[I

.field static final synthetic $SwitchMap$com$obs$services$model$StorageClassEnum:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 542
    invoke-static {}, Lcom/obs/services/model/GroupGranteeEnum;->values()[Lcom/obs/services/model/GroupGranteeEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$GroupGranteeEnum:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/obs/services/model/GroupGranteeEnum;->ALL_USERS:Lcom/obs/services/model/GroupGranteeEnum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$GroupGranteeEnum:[I

    sget-object v3, Lcom/obs/services/model/GroupGranteeEnum;->AUTHENTICATED_USERS:Lcom/obs/services/model/GroupGranteeEnum;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$GroupGranteeEnum:[I

    sget-object v4, Lcom/obs/services/model/GroupGranteeEnum;->LOG_DELIVERY:Lcom/obs/services/model/GroupGranteeEnum;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    .line 494
    :catch_28
    invoke-static {}, Lcom/obs/services/model/StorageClassEnum;->values()[Lcom/obs/services/model/StorageClassEnum;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$StorageClassEnum:[I

    :try_start_31
    sget-object v4, Lcom/obs/services/model/StorageClassEnum;->STANDARD:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_39} :catch_39

    :catch_39
    :try_start_39
    sget-object v3, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$StorageClassEnum:[I

    sget-object v4, Lcom/obs/services/model/StorageClassEnum;->WARM:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v3, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$StorageClassEnum:[I

    sget-object v4, Lcom/obs/services/model/StorageClassEnum;->COLD:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4d} :catch_4d

    :catch_4d
    const/4 v3, 0x4

    :try_start_4e
    sget-object v4, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$StorageClassEnum:[I

    sget-object v5, Lcom/obs/services/model/StorageClassEnum;->DEEP_ARCHIVE:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_58} :catch_58

    .line 458
    :catch_58
    invoke-static {}, Lcom/obs/services/model/EventTypeEnum;->values()[Lcom/obs/services/model/EventTypeEnum;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$EventTypeEnum:[I

    :try_start_61
    sget-object v5, Lcom/obs/services/model/EventTypeEnum;->OBJECT_CREATED_ALL:Lcom/obs/services/model/EventTypeEnum;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_69} :catch_69

    :catch_69
    :try_start_69
    sget-object v1, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$EventTypeEnum:[I

    sget-object v4, Lcom/obs/services/model/EventTypeEnum;->OBJECT_CREATED_PUT:Lcom/obs/services/model/EventTypeEnum;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_73} :catch_73

    :catch_73
    :try_start_73
    sget-object v0, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$EventTypeEnum:[I

    sget-object v1, Lcom/obs/services/model/EventTypeEnum;->OBJECT_CREATED_POST:Lcom/obs/services/model/EventTypeEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7d} :catch_7d

    :catch_7d
    :try_start_7d
    sget-object v0, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$EventTypeEnum:[I

    sget-object v1, Lcom/obs/services/model/EventTypeEnum;->OBJECT_CREATED_COPY:Lcom/obs/services/model/EventTypeEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_87} :catch_87

    :catch_87
    :try_start_87
    sget-object v0, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$EventTypeEnum:[I

    sget-object v1, Lcom/obs/services/model/EventTypeEnum;->OBJECT_CREATED_COMPLETE_MULTIPART_UPLOAD:Lcom/obs/services/model/EventTypeEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_92} :catch_92

    :catch_92
    :try_start_92
    sget-object v0, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$EventTypeEnum:[I

    sget-object v1, Lcom/obs/services/model/EventTypeEnum;->OBJECT_REMOVED_ALL:Lcom/obs/services/model/EventTypeEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9d} :catch_9d

    :catch_9d
    :try_start_9d
    sget-object v0, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$EventTypeEnum:[I

    sget-object v1, Lcom/obs/services/model/EventTypeEnum;->OBJECT_REMOVED_DELETE:Lcom/obs/services/model/EventTypeEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Lcom/obs/services/internal/V2Convertor$2;->$SwitchMap$com$obs$services$model$EventTypeEnum:[I

    sget-object v1, Lcom/obs/services/model/EventTypeEnum;->OBJECT_REMOVED_DELETE_MARKER_CREATED:Lcom/obs/services/model/EventTypeEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    return-void
.end method
