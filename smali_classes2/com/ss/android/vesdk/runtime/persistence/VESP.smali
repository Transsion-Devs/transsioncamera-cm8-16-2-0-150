.class public Lcom/ss/android/vesdk/runtime/persistence/VESP;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/runtime/persistence/VESP$VESPSingleton;
    }
.end annotation


# static fields
.field public static final KEY_DEVICEID:Ljava/lang/String; = "KEY_DEVICEID"

.field public static final KEY_MODELS_DIR_SP_KEY:Ljava/lang/String; = "vesdk_models_dir_sp_key"

.field public static final KEY_SENSOR_REPORTED:Ljava/lang/String; = "sensor_reported"

.field public static final KEY_SYS_BEST_CODEC:Ljava/lang/String; = "sys_best_codec"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mInited:Z

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->mInited:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/vesdk/runtime/persistence/VESP$1;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/persistence/VESP;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;
    .registers 1

    .line 48
    sget-object v0, Lcom/ss/android/vesdk/runtime/persistence/VESP$VESPSingleton;->INSTANCE:Lcom/ss/android/vesdk/runtime/persistence/VESP$VESPSingleton;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/persistence/VESP$VESPSingleton;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized initEditorIfNeed()V
    .registers 2

    monitor-enter p0

    .line 149
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_10

    .line 150
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->editor:Landroid/content/SharedPreferences$Editor;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception v0

    goto :goto_12

    .line 152
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :goto_12
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_e

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 129
    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->initEditorIfNeed()V

    .line 130
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 131
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public contain(Ljava/lang/String;)Z
    .registers 2

    .line 138
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 101
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 102
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->sharedPreferences:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 103
    :cond_d
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_22

    .line 104
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->sharedPreferences:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 105
    :cond_22
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_37

    .line 106
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->sharedPreferences:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 107
    :cond_37
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_4c

    .line 108
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->sharedPreferences:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 109
    :cond_4c
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_61

    .line 110
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->sharedPreferences:Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 112
    :cond_61
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAll()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 145
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 56
    monitor-enter p0

    .line 57
    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->mInited:Z

    if-nez v0, :cond_16

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->mInited:Z

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_18

    .line 61
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_14

    throw p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 7

    .line 75
    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->initEditorIfNeed()V

    .line 76
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 77
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->editor:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_58

    .line 78
    :cond_f
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1f

    .line 79
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->editor:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_58

    .line 80
    :cond_1f
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2f

    .line 81
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->editor:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_58

    .line 82
    :cond_2f
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_3f

    .line 83
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->editor:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_58

    .line 84
    :cond_3f
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4f

    .line 85
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->editor:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_58

    .line 87
    :cond_4f
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_58
    if-eqz p3, :cond_60

    .line 90
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 92
    :cond_60
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    .line 120
    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->initEditorIfNeed()V

    .line 121
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/persistence/VESP;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
