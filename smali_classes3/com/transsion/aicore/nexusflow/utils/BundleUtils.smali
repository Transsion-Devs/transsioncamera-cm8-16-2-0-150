.class public final Lcom/transsion/aicore/nexusflow/utils/BundleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/transsion/aicore/nexusflow/utils/BundleUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;

    invoke-direct {v0}, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;-><init>()V

    sput-object v0, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/BundleUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final copyArrayValue(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 1
    instance-of p0, p3, [Ljava/lang/String;

    if-eqz p0, :cond_a

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 2
    :cond_a
    instance-of p0, p3, [Ljava/lang/Integer;

    if-eqz p0, :cond_18

    .line 4
    check-cast p3, [Ljava/lang/Integer;

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->toIntArray([Ljava/lang/Integer;)[I

    move-result-object p0

    .line 5
    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-void

    .line 7
    :cond_18
    instance-of p0, p3, [Ljava/lang/Long;

    if-eqz p0, :cond_26

    .line 8
    check-cast p3, [Ljava/lang/Long;

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->toLongArray([Ljava/lang/Long;)[J

    move-result-object p0

    .line 9
    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    return-void

    .line 11
    :cond_26
    instance-of p0, p3, [Ljava/lang/Float;

    if-eqz p0, :cond_34

    .line 12
    check-cast p3, [Ljava/lang/Float;

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->toFloatArray([Ljava/lang/Float;)[F

    move-result-object p0

    .line 13
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-void

    .line 15
    :cond_34
    instance-of p0, p3, [Ljava/lang/Double;

    if-eqz p0, :cond_42

    .line 16
    check-cast p3, [Ljava/lang/Double;

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->toDoubleArray([Ljava/lang/Double;)[D

    move-result-object p0

    .line 17
    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-void

    .line 19
    :cond_42
    instance-of p0, p3, [Ljava/lang/Boolean;

    if-eqz p0, :cond_50

    .line 20
    check-cast p3, [Ljava/lang/Boolean;

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->toBooleanArray([Ljava/lang/Boolean;)[Z

    move-result-object p0

    .line 21
    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-void

    .line 24
    :cond_50
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_5f

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_60

    :cond_5f
    const/4 p0, 0x0

    :goto_60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported array type key: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", elementType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BundleUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic copyBundle$default(Lcom/transsion/aicore/nexusflow/utils/BundleUtils;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/Set;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_8

    .line 1
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p3

    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;->copyBundle(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/Set;)V

    return-void
.end method

.method private final copyBundleValue(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6

    const-string v0, "BundleUtils"

    .line 1
    :try_start_2
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_13

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_10
    move-exception p0

    goto/16 :goto_db

    .line 3
    :cond_13
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_21

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p2, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    .line 4
    :cond_21
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_2f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, p3, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void

    .line 5
    :cond_2f
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3d

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p2, p3, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 6
    :cond_3d
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_4b

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void

    .line 7
    :cond_4b
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_59

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2, p3, p0, p1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    return-void

    .line 8
    :cond_59
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_63

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 11
    :cond_63
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_6d

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p1}, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;->copyArrayValue(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_6d
    instance-of p0, p1, [I

    if-eqz p0, :cond_77

    check-cast p1, [I

    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-void

    .line 13
    :cond_77
    instance-of p0, p1, [J

    if-eqz p0, :cond_81

    check-cast p1, [J

    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    return-void

    .line 14
    :cond_81
    instance-of p0, p1, [F

    if-eqz p0, :cond_8b

    check-cast p1, [F

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-void

    .line 15
    :cond_8b
    instance-of p0, p1, [D

    if-eqz p0, :cond_95

    check-cast p1, [D

    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-void

    .line 16
    :cond_95
    instance-of p0, p1, [Z

    if-eqz p0, :cond_9f

    check-cast p1, [Z

    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-void

    :cond_9f
    if-nez p1, :cond_b6

    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Skipping null value for key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 23
    :cond_b6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported parameter type key: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_da} :catch_10

    return-void

    .line 27
    :goto_db
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to copy Bundle value key: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic createErrorBundle$default(Lcom/transsion/aicore/nexusflow/utils/BundleUtils;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;->createErrorBundle(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final buildCapabilityInitParams(Landroid/content/Context;Ljava/util/List;JILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "capabilities"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 231
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 232
    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 233
    const-string/jumbo p2, "timeout_ms"

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "process_name"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string p1, "pid"

    invoke-virtual {v0, p1, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 237
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/BundleUtils;

    invoke-static {p0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p6, v0, p0}, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;->copyBundle(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/Set;)V

    return-object v0
.end method

.method public final bundleToString(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_5

    .line 1
    const-string p0, "null"

    return-object p0

    .line 2
    :cond_5
    invoke-static {}, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->c()Ljava/lang/StringBuilder;

    move-result-object p0

    .line 3
    :try_start_9
    const-string v0, "Bundle{"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "keySet(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_30

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    goto :goto_30

    :catchall_2e
    move-exception p1

    goto :goto_6a

    .line 182
    :cond_30
    :goto_30
    check-cast v2, Ljava/lang/String;

    if-lez v1, :cond_39

    .line 183
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_39
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_1c

    .line 186
    :cond_56
    const-string/jumbo p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_60
    .catchall {:try_start_9 .. :try_end_60} :catchall_2e

    .line 188
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->a(Ljava/lang/StringBuilder;)V

    .line 189
    const-string/jumbo p0, "useStringBuilder(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 190
    :goto_6a
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->a(Ljava/lang/StringBuilder;)V

    throw p1
.end method

.method public final copyBundle(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/Set;)V
    .registers 7

    const-string p0, "target"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "excludeKeys"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_46

    .line 1
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping excluded key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BundleUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 7
    :cond_3d
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/BundleUtils;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, p1, p2, v0}, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;->copyBundleValue(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_14

    :cond_46
    return-void
.end method

.method public final createErrorBundle(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    const-string p0, "errorMessage"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-string v0, "ErrorCode"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 3
    const-string p1, "error_message"

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string p1, "success"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string/jumbo v0, "timestamp"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz p3, :cond_2b

    .line 6
    const-string p1, "ErrorType"

    invoke-virtual {p0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    return-object p0
.end method

.method public final createOptimizedBundle(Lkotlin/jvm/functions/Function1;)Landroid/os/Bundle;
    .registers 2

    const-string p0, "initializer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->b()Landroid/os/Bundle;

    move-result-object p0

    .line 2
    :try_start_9
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 5
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->a(Landroid/os/Bundle;)V

    return-object p1

    :catchall_15
    move-exception p1

    .line 6
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/performance/ObjectPoolManager;->a(Landroid/os/Bundle;)V

    throw p1
.end method
