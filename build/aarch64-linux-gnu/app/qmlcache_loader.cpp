#include <QtQml/qqmlprivate.h>
#include <QtCore/qdir.h>
#include <QtCore/qurl.h>

static const unsigned char qt_resource_tree[] = {
0,
0,0,0,0,2,0,0,0,1,0,0,0,1,0,0,0,
8,0,2,0,0,0,2,0,0,0,2,0,0,0,42,0,
2,0,0,0,3,0,0,0,4,0,0,0,20,0,0,0,
0,0,1,0,0,0,0,0,0,0,158,0,0,0,0,0,
1,0,0,0,0,0,0,0,120,0,0,0,0,0,1,0,
0,0,0,0,0,0,74,0,0,0,0,0,1,0,0,0,
0};
static const unsigned char qt_resource_names[] = {
0,
1,0,0,0,47,0,47,0,3,0,0,104,112,0,97,0,
112,0,112,0,8,8,1,94,92,0,77,0,97,0,105,0,
110,0,46,0,113,0,109,0,108,0,13,4,108,8,83,0,
85,0,67,0,83,0,67,0,111,0,109,0,112,0,111,0,
110,0,101,0,110,0,116,0,115,0,20,9,32,189,60,0,
82,0,97,0,100,0,105,0,97,0,108,0,66,0,111,0,
116,0,116,0,111,0,109,0,69,0,100,0,103,0,101,0,
46,0,113,0,109,0,108,0,16,3,119,191,220,0,82,0,
97,0,100,0,105,0,97,0,108,0,65,0,99,0,116,0,
105,0,111,0,110,0,46,0,113,0,109,0,108,0,14,0,
83,146,124,0,69,0,109,0,112,0,116,0,121,0,83,0,
116,0,97,0,116,0,101,0,46,0,113,0,109,0,108};
static const unsigned char qt_resource_empty_payout[] = { 0, 0, 0, 0, 0 };
QT_BEGIN_NAMESPACE
extern Q_CORE_EXPORT bool qRegisterResourceData(int, const unsigned char *, const unsigned char *, const unsigned char *);
QT_END_NAMESPACE
namespace QmlCacheGeneratedCode {
namespace _app_UCSComponents_EmptyState_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _app_Main_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _app_UCSComponents_RadialAction_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _app_UCSComponents_RadialBottomEdge_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}

}
namespace {
struct Registry {
    Registry();
    ~Registry();
    QHash<QString, const QQmlPrivate::CachedQmlUnit*> resourcePathToCachedUnit;
    static const QQmlPrivate::CachedQmlUnit *lookupCachedUnit(const QUrl &url);
};

Q_GLOBAL_STATIC(Registry, unitRegistry)


Registry::Registry() {
        resourcePathToCachedUnit.insert(QStringLiteral("/app/UCSComponents/EmptyState.qml"), &QmlCacheGeneratedCode::_app_UCSComponents_EmptyState_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/app/Main.qml"), &QmlCacheGeneratedCode::_app_Main_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/app/UCSComponents/RadialAction.qml"), &QmlCacheGeneratedCode::_app_UCSComponents_RadialAction_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/app/UCSComponents/RadialBottomEdge.qml"), &QmlCacheGeneratedCode::_app_UCSComponents_RadialBottomEdge_qml::unit);
    QQmlPrivate::RegisterQmlUnitCacheHook registration;
    registration.version = 0;
    registration.lookupCachedQmlUnit = &lookupCachedUnit;
    QQmlPrivate::qmlregister(QQmlPrivate::QmlUnitCacheHookRegistration, &registration);
QT_PREPEND_NAMESPACE(qRegisterResourceData)(/*version*/0x01, qt_resource_tree, qt_resource_names, qt_resource_empty_payout);
}

Registry::~Registry() {
    QQmlPrivate::qmlunregister(QQmlPrivate::QmlUnitCacheHookRegistration, quintptr(&lookupCachedUnit));
}

const QQmlPrivate::CachedQmlUnit *Registry::lookupCachedUnit(const QUrl &url) {
    if (url.scheme() != QLatin1String("qrc"))
        return nullptr;
    QString resourcePath = QDir::cleanPath(url.path());
    if (resourcePath.isEmpty())
        return nullptr;
    if (!resourcePath.startsWith(QLatin1Char('/')))
        resourcePath.prepend(QLatin1Char('/'));
    return unitRegistry()->resourcePathToCachedUnit.value(resourcePath, nullptr);
}
}
int QT_MANGLE_NAMESPACE(qInitResources_main)() {
    ::unitRegistry();
    return 1;
}
Q_CONSTRUCTOR_FUNCTION(QT_MANGLE_NAMESPACE(qInitResources_main))
int QT_MANGLE_NAMESPACE(qCleanupResources_main)() {
    return 1;
}
