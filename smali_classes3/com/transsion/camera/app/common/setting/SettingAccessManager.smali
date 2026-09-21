.class public Lcom/transsion/camera/app/common/setting/SettingAccessManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAccessCountSyncObject:Ljava/lang/Object;

.field private mAccessList:Ljava/util/List;

.field private volatile mActiveAccessCount:I

.field private mConditionVariable:Landroid/os/ConditionVariable;

.field private mInControlling:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SettingAccessManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessList:Ljava/util/List;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessCountSyncObject:Ljava/lang/Object;

    .line 18
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mConditionVariable:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public declared-synchronized activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 39
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;Z)Z

    move-result p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return p1

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;Z)Z
    .registers 5

    monitor-enter p0

    if-eqz p2, :cond_2a

    .line 53
    :try_start_3
    sget-object p2, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[activeAccess], access:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->-$$Nest$fgetmName(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInControlling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mInControlling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2a

    :catchall_28
    move-exception p1

    goto :goto_48

    .line 56
    :cond_2a
    :goto_2a
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mInControlling:Z
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_28

    if-eqz p2, :cond_31

    .line 57
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 60
    :cond_31
    :try_start_31
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessCountSyncObject:Ljava/lang/Object;

    monitor-enter p2
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_28

    .line 61
    :try_start_34
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->-$$Nest$mvalidate(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget p1, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I

    .line 64
    monitor-exit p2
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_45

    .line 65
    monitor-exit p0

    return v0

    :catchall_45
    move-exception p1

    .line 64
    :try_start_46
    monitor-exit p2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw p1

    :goto_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_28

    throw p1
.end method

.method public getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;
    .registers 3

    .line 27
    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;-><init>(Lcom/transsion/camera/app/common/setting/SettingAccessManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V
    .registers 3

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;Z)V

    return-void
.end method

.method public recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;Z)V
    .registers 5

    if-eqz p2, :cond_1c

    .line 85
    sget-object p2, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[recycleAccess], access:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->-$$Nest$fgetmName(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    :cond_1c
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessCountSyncObject:Ljava/lang/Object;

    monitor-enter p2

    .line 88
    :try_start_1f
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->-$$Nest$minvalidate(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    iget p1, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I

    .line 91
    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_38

    .line 93
    iget p1, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I

    if-gtz p1, :cond_37

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    :cond_37
    return-void

    :catchall_38
    move-exception p0

    .line 91
    :try_start_39
    monitor-exit p2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public declared-synchronized startControl()V
    .registers 4

    monitor-enter p0

    .line 103
    :try_start_1
    sget-object v0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[startControl]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mInControlling:Z

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessCountSyncObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_52

    .line 106
    :try_start_e
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    if-eqz v2, :cond_14

    .line 108
    invoke-static {v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->-$$Nest$minvalidate(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    goto :goto_14

    :catchall_26
    move-exception v1

    goto :goto_5e

    .line 111
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_26

    .line 112
    :try_start_29
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 113
    sget-object v0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startControl], mActiveAccessCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I

    if-lez v0, :cond_54

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mConditionVariable:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    goto :goto_54

    :catchall_52
    move-exception v0

    goto :goto_60

    .line 117
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mAccessList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mActiveAccessCount:I
    :try_end_5c
    .catchall {:try_start_29 .. :try_end_5c} :catchall_52

    .line 119
    monitor-exit p0

    return-void

    .line 111
    :goto_5e
    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_26

    :try_start_5f
    throw v1

    :goto_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_5f .. :try_end_61} :catchall_52

    throw v0
.end method

.method public declared-synchronized stopControl()V
    .registers 3

    monitor-enter p0

    .line 125
    :try_start_1
    sget-object v0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[stopControl]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->mInControlling:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 127
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method
