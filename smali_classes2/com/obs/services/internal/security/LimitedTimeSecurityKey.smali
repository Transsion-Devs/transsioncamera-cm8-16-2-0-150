.class public Lcom/obs/services/internal/security/LimitedTimeSecurityKey;
.super Lcom/obs/services/internal/security/BasicSecurityKey;
.source "SourceFile"


# static fields
.field private static final EXPIRY_SECONDS:J = 0x12cL

.field private static final WILL_SOON_EXPIRE_SECONDS:J = 0x78L


# instance fields
.field protected expiryDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/obs/services/internal/security/BasicSecurityKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/obs/services/internal/security/BasicSecurityKey;->accessKey:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/obs/services/internal/security/BasicSecurityKey;->secretKey:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/obs/services/internal/security/BasicSecurityKey;->securityToken:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/obs/services/internal/security/LimitedTimeSecurityKey;->getUtcTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/security/LimitedTimeSecurityKey;->expiryDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .registers 5

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/obs/services/internal/security/BasicSecurityKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/obs/services/internal/security/BasicSecurityKey;->accessKey:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/obs/services/internal/security/BasicSecurityKey;->secretKey:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/obs/services/internal/security/BasicSecurityKey;->securityToken:Ljava/lang/String;

    .line 40
    invoke-static {p4}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/security/LimitedTimeSecurityKey;->expiryDate:Ljava/util/Date;

    return-void
.end method

.method public static getUtcTime()Ljava/util/Date;
    .registers 3

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xf

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x10

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    const/16 v2, 0xe

    .line 67
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 68
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public aboutToExpire()Z
    .registers 5

    .line 49
    iget-object v0, p0, Lcom/obs/services/internal/security/LimitedTimeSecurityKey;->expiryDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Lcom/obs/services/internal/security/LimitedTimeSecurityKey;->getUtcTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2e

    iget-object p0, p0, Lcom/obs/services/internal/security/LimitedTimeSecurityKey;->expiryDate:Ljava/util/Date;

    .line 50
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Lcom/obs/services/internal/security/LimitedTimeSecurityKey;->getUtcTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long p0, v0, v2

    if-gez p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/obs/services/internal/security/LimitedTimeSecurityKey;->expiryDate:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public willSoonExpire()Z
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/obs/services/internal/security/LimitedTimeSecurityKey;->expiryDate:Ljava/util/Date;

    invoke-static {}, Lcom/obs/services/internal/security/LimitedTimeSecurityKey;->getUtcTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object p0, p0, Lcom/obs/services/internal/security/LimitedTimeSecurityKey;->expiryDate:Ljava/util/Date;

    .line 60
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Lcom/obs/services/internal/security/LimitedTimeSecurityKey;->getUtcTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long p0, v0, v2

    if-gez p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    return p0

    :cond_25
    :goto_25
    const/4 p0, 0x1

    return p0
.end method
