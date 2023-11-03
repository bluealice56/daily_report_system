//DAO

package utils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import constants.JpaConst;

public class DBUtil {

    private static EntityManagerFactory emf;

    //EntityManagerインスタンスを生成
    public static EntityManager createEntityManager() {
        return _getEntityManagerFactory().createEntityManager();
    }

    //EntityManagerFactoryインスタンスを生成
    private static EntityManagerFactory _getEntityManagerFactory() {
        if (emf == null) {
    //PERSISTENCE_UNIT_NAME 定数をJpaConstインターフェイスで定義している。
            emf = Persistence.createEntityManagerFactory(JpaConst.PERSISTENCE_UNIT_NAME);
        }

        return emf;
    }
}